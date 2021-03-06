radius = .15;

state_limits = ...
    [world_limits;
    -1,1;
    -1,1;
    0,0];

sampling_limits = state_limits;

input_limits = ...
    [ -.9,.9;
      -.9,.9;
      0,0];

state_dims = 6;
input_dims = 3;

A= [0,0,0,1,0,0;
    0,0,0,0,1,0;
    0,0,0,0,0,1;
    0,0,0,0,0,0;
    0,0,0,0,0,0;
    0,0,0,0,0,0];

B= [0,0,0;
    0,0,0;
    0,0,0;
    1,0,0;
    0,1,0;
    0,0,1];

c = zeros(state_dims,1);

R = eye(3);

iterations = 500;
obstacles = obs;