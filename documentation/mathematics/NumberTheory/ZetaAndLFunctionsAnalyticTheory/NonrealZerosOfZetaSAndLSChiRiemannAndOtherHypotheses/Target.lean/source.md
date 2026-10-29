# Target — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07cb1cd18d67346027d58b7461faf1cfdb5d78b1` · SHA-256 `9974c958d94ee0b86f399959e978b7ade3e3ac60bb9ff282c7b4b7150d99e189`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.RH.Target

/-!
# Folder.Theorem.RH.Target

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports exact RH target facts.
Ontology: proof.rh.target
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/

namespace Folder
namespace Theorem
namespace RH
namespace Target

theorem riemann_hypothesis_statement_is_fixed
    (T : Folder.RH.ClassicalRHTarget) :
    Folder.RH.RiemannHypothesis = Folder.RH.RiemannHypothesis :=
  Folder.RH.riemann_hypothesis_statement_is_fixed T

theorem zeta_nontrivial_zero_has_zero_statement
    {ρ : ℂ}
    (Z : Folder.RH.ZetaNontrivialZero ρ) :
    Folder.RH.CompletedZeta ρ = 0 :=
  Folder.RH.zeta_nontrivial_zero_has_zero_statement Z

theorem zeta_nontrivial_zero_has_nontrivial_statement
    {ρ : ℂ}
    (Z : Folder.RH.ZetaNontrivialZero ρ) :
    Folder.RH.NontrivialZetaZeroCondition ρ :=
  Folder.RH.zeta_nontrivial_zero_has_nontrivial_statement Z

theorem completed_zeta_eq_mathlib
    (s : ℂ) :
    Folder.RH.CompletedZeta s = completedRiemannZeta s :=
  Folder.RH.completed_zeta_eq_mathlib s

theorem xi_completed_zeta_relation
    (s : ℂ) :
    Folder.RH.Xi s =
      (1 / 2 : ℂ) * s * (s - 1) * Folder.RH.CompletedZeta s :=
  Folder.RH.xi_completed_zeta_relation s

theorem h0_definition
    (z : ℂ) :
    Folder.RH.H0 z =
      (1 / 8 : ℂ) *
        Folder.RH.Xi (Folder.RH.H0SpectralParameter z) :=
  Folder.RH.h0_definition z

end Target
end RH
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=220ce70fbd8cd679bbb99f69ccb6b70325f92395c21bab62b6d2949d279198f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Target/Variant9974c958d94ee0b86f399959e978b7ade3e3ac60bb9ff282c7b4b7150d99e189.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
