{
  services.undervolt = {
  enable = true;
  # These are example values. You will need to find your stable offsets.
  # Start with small negative values and increase them gradually.
  coreOffset = -50; # in mV
  cacheOffset = -50; # in mV (often needs to be the same as coreOffset)
  # You can also undervolt the GPU, uncore, and analogio if desired.
  # gpuOffset = -30;
  # uncoreOffset = -40;
  # analogioOffset = -20;

  # Optional: Set a temperature target (CPU will throttle to stay below this)
  # temp = 80; # in Celsius

  # Optional: Enable a timer to reapply settings if they don't stick
  # useTimer = true; # Can cause journal spam but might be necessary for some hardware
 };
}