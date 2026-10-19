import Boolean.Cube.ZetaTraceZKP

/-!
# Spectral Dirac bridge

This module exposes the existing certificate-gated Dirac bridge syntax under a
small dedicated import surface.  It does not construct a spectral triple,
Hilbert space, Dirac operator, prismatic comparison, or trace formula.
-/

namespace Boolean.Cube.SpectralDiracBridge

abbrev TraceConstraint :=
  Boolean.Cube.ZetaTraceZKP.TraceConstraint

abbrev DiracSymbol :=
  Boolean.Cube.ZetaTraceZKP.DiracSymbol

abbrev PrismaticDifferenceSymbol :=
  Boolean.Cube.ZetaTraceZKP.PrismaticDifferenceSymbol

abbrev SpectralBridgeNode :=
  Boolean.Cube.ZetaTraceZKP.SpectralBridgeNode

abbrev ConnesStyleBridge :=
  Boolean.Cube.ZetaTraceZKP.ConnesStyleBridge

abbrev PrismaticLimitCertificate :=
  Boolean.Cube.ZetaTraceZKP.PrismaticLimitCertificate

theorem connes_bridge_has_matrix_tree_lowering
    (B : ConnesStyleBridge) :
    B.matrixTreeLoweringCert :=
  Boolean.Cube.ZetaTraceZKP.connes_bridge_has_matrix_tree_lowering B

theorem prismatic_limit_aligns_with_functional_equation
    (P : PrismaticLimitCertificate) :
    P.limitAlignedWithFunctionalEquation :=
  Boolean.Cube.ZetaTraceZKP.prismatic_limit_aligns_with_functional_equation P

end Boolean.Cube.SpectralDiracBridge
