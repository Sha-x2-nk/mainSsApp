import sys
from PySide6.QtWidgets import QApplication
from PySide6.QtCore import QUrl, QObject, Slot, Signal
from PySide6.QtQml import QQmlApplicationEngine, QmlElement

import librosa
import librosa.display
import matplotlib.pyplot as plt
import numpy as np
class SpectrogramGenerator(QObject):
    # Define a signal that will be emitted when the button is pressed
    generateSpectrogramSignal = Signal(str)

    def __init__(self):
        super().__init__()

        # Connect the signal to the function that generates the mel spectrogram
        self.generateSpectrogramSignal.connect(self.generate_spectrogram)

    def plot_spectrogram(self, Y, sr, hop_length, y_axis, save_path: str):
        plt.figure(figsize=(25, 10))
        librosa.display.specshow(Y,
                                 sr=sr,
                                 hop_length=hop_length,
                                 x_axis="time",
                                 y_axis=y_axis)
        plt.colorbar(format="%+2.0f")
        plt.title("Spectrogram")
        # Save the figure as an image (e.g., PNG)
        spec_save_path= save_path[:-4] + "_spec.png"
        plt.savefig(spec_save_path)

    @Slot(str)
    def generate_spectrogram(self, filepath):
        # Function to generate mel spectrogram from the given audio file path
        # filepath = "path/to/your/audio/file.mp3"  # Replace this with the actual file path
        # Your code to generate the mel spectrogram goes here
        print(f"Generating mel spectrogram for file: {filepath}")
        # Call your mel spectrogram generation function here
        audio_file1 = QUrl(filepath).toLocalFile()
        audio1, sr1 = librosa.load(audio_file1)
        Frame_Size = 2048
        Hop_Size = 512
        S_audio1 = librosa.stft(audio1, n_fft=Frame_Size, hop_length=Hop_Size)
        y_audio1 = np.abs(S_audio1) ** 2
        Y_log_scale1= librosa.power_to_db(y_audio1)
        self.plot_spectrogram(Y_log_scale1,sr1,Hop_Size,"log", audio_file1)



if __name__ == "__main__":
    app = QApplication(sys.argv)
    spectrogram_generator = SpectrogramGenerator()
    engine = QQmlApplicationEngine()
    engine.rootContext().setContextProperty("spectrogramGenerator", spectrogram_generator)

    engine.load(QUrl.fromLocalFile("main.qml"))  # Assuming your main QML file is named "main.qml"

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec())
