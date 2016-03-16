function quickSpectrogram(filename)
% QUICKSPECTROGRAM Plot the spectrogram of an audio file.

% Set up a MATLAB default like colourmap
startStop = [1, 1, 1];
endStop = [0, 0.4470, 0.7410];
nStops = 64;
colourMap = zeros(nStops, 3);
for i = 1:3
    colourMap(:, i) = linspace(startStop(i), endStop(i), nStops);
end

% Plot the spectrogram
[x, Fs] = audioread(filename);
spectrogram(x(:,1), 1024, 512, 1024, Fs, 'yaxis');
colormap(colourMap)
caxis([-100, -10]);
title(filename)