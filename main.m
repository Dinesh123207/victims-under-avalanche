% Cole-Cole Model Parameters for Different Materials
% Human Tissue Parameters (Example values, replace with actual parameters)
epsilon_inf_human = 50;     % High-frequency permittivity for tissue
delta_epsilon_human = 5;    % Difference between high and low frequency permittivity for tissue
tau_human = 0.1;            % Relaxation time for tissue
alpha_human = 0.7;          % Cole-Cole parameter for tissue

% Snow Parameters (Example values, replace with actual parameters)
epsilon_inf_snow = 3;       % High-frequency permittivity for snow
delta_epsilon_snow = 1;     % Difference between high and low frequency permittivity for snow
tau_snow = 0.05;            % Relaxation time for snow
alpha_snow = 0.6;           % Cole-Cole parameter for snow

% Debris Parameters (Example values, replace with actual parameters)
epsilon_inf_debris = 10;    % High-frequency permittivity for debris
delta_epsilon_debris = 2;   % Difference between high and low frequency permittivity for debris
tau_debris = 0.08;          % Relaxation time for debris
alpha_debris = 0.65;        % Cole-Cole parameter for debris

% Frequency Range (Modify as needed)
frequencies = logspace(6, 10, 100); % Frequency range from 10^6 to 10^10 Hz (100 points)

% Calculate angular frequency (omega)
omega = 2 * pi * frequencies;

% Cole-Cole Equation for Complex Permittivity Calculation
epsilon_star_human = epsilon_inf_human + (delta_epsilon_human ./ (1 + (1i .* omega .* tau_human).^(1 - alpha_human)));
epsilon_star_snow = epsilon_inf_snow + (delta_epsilon_snow ./ (1 + (1i .* omega .* tau_snow).^(1 - alpha_snow)));
epsilon_star_debris = epsilon_inf_debris + (delta_epsilon_debris ./ (1 + (1i .* omega .* tau_debris).^(1 - alpha_debris)));

% Plotting Results
figure;
loglog(frequencies, real(epsilon_star_human), 'b'); hold on;
loglog(frequencies, real(epsilon_star_snow), 'r');
loglog(frequencies, real(epsilon_star_debris), 'g');
xlabel('Frequency (Hz)');
ylabel('Real Part of Permittivity');
legend('Human Tissue', 'Snow', 'Debris');
title('Real Part of Permittivity vs Frequency');
% Cole-Cole Model Parameters for Different Materials
% Human Tissue Parameters (Example values, replace with actual parameters)
epsilon_inf_human = 50;     % High-frequency permittivity for tissue
delta_epsilon_human = 5;    % Difference between high and low frequency permittivity for tissue
tau_human = 0.1;            % Relaxation time for tissue
alpha_human = 0.7;          % Cole-Cole parameter for tissue

% Snow Parameters (Example values, replace with actual parameters)
epsilon_inf_snow = 3;       % High-frequency permittivity for snow
delta_epsilon_snow = 1;     % Difference between high and low frequency permittivity for snow
tau_snow = 0.05;            % Relaxation time for snow
alpha_snow = 0.6;           % Cole-Cole parameter for snow

% Debris Parameters (Example values, replace with actual parameters)
epsilon_inf_debris = 10;    % High-frequency permittivity for debris
delta_epsilon_debris = 2;   % Difference between high and low frequency permittivity for debris
tau_debris = 0.08;          % Relaxation time for debris
alpha_debris = 0.65;        % Cole-Cole parameter for debris

% Frequency Range (Modify as needed)
frequencies = logspace(6, 10, 100); % Frequency range from 10^6 to 10^10 Hz (100 points)

% Calculate angular frequency (omega)
omega = 2 * pi * frequencies;

% Cole-Cole Equation for Complex Permittivity Calculation
epsilon_star_human = epsilon_inf_human + (delta_epsilon_human ./ (1 + (1i .* omega .* tau_human).^(1 - alpha_human)));
epsilon_star_snow = epsilon_inf_snow + (delta_epsilon_snow ./ (1 + (1i .* omega .* tau_snow).^(1 - alpha_snow)));
epsilon_star_debris = epsilon_inf_debris + (delta_epsilon_debris ./ (1 + (1i .* omega .* tau_debris).^(1 - alpha_debris)));

% Plotting Results
figure;
loglog(frequencies, real(epsilon_star_human), 'b'); hold on;
loglog(frequencies, real(epsilon_star_snow), 'r');
loglog(frequencies, real(epsilon_star_debris), 'g');
xlabel('Frequency (Hz)');
ylabel('Real Part of Permittivity');
legend('Human Tissue', 'Snow', 'Debris');
title('Real Part of Permittivity vs Frequency');
