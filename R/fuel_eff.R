#' Automobile Power requirement for a given speed
#' @param v vehicle speed (m/s)
#' @param m vehicle mass (kg)
#' @param a surface area of car (m^2)
#' @param g acceleration constant due to gravity (9.8 m/s^2)
#' @param p_air density of air (1.2 kg/m^3)
#' @param pb power (W)

power_req = function(v, m, a) {
  crolling = 0.015
  c_drag = 0.3
  g = 9.8
  p_air = 1.2
  pb = crolling * m * g * v + 0.5 * a * p_air *c_drag * v^3
  return(pb)
}