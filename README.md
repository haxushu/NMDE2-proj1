# NMDE2-proj1
Numerical Schemes for the Riemann Problem of 1-order scalar transport equation.
Consider the following Riemann Problem
        \[ \left \{ 
            \begin{array}{ll}
                u_t+ax_u=0,~~~x\in[\alpha,\beta],~t>0, \\ 
                u_0(x)= 
                \left \{
                    \begin{array}{ll}
                        1,~~~x\le 0,\\
                        0,~~~x>0,
                    \end{array}
                \right.\\ 
                u(\alpha,t)=1,~~~u(\beta,t)=0.
            \end{array}
        \right.  \]
        Parameters a, $\alpha$ and $\beta$ are all fixed in this problem 
        where $a>0$ and $\alpha<0<\beta$.

The objective of the project is to solve this problem in four 
different numerical schemes(Upwind, Lax-Friedrichs, Lax-Wendroff 
and Beam-Warming) and compare the numerical outcome 
with the exact solution respectively at time $T=0.5$.   
