# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NavierStokes.Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `404b31f6776f999c76cadea9ca3847fe753d7e9a` · SHA-256 `416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.NavierStokes.SmoothContinuation
import Folder.GrandChallenge.NavierStokes.NonBlowupObstruction
import Folder.GrandChallenge.NavierStokes.TaoSorting

/-!
# Folder.Theorem.GrandChallenge.NavierStokes

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Navier-Stokes branch contract facts.
Ontology: proof.grand_challenge_navier_stokes
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem ns_continuation_maps_exist_if_supplied
    (S : Folder.GrandChallenge.NavierStokes.SmoothContinuation) :
    S.continuationMapsExist :=
  Folder.GrandChallenge.NavierStokes.ns_continuation_maps_exist_if_supplied S

theorem ns_preserves_true_nonlinearity_if_supplied
    (S : Folder.GrandChallenge.NavierStokes.SmoothContinuation) :
    S.preservesTrueNavierStokesNonlinearity :=
  Folder.GrandChallenge.NavierStokes.ns_preserves_true_nonlinearity_if_supplied S

theorem ns_blowup_obstruction_if_supplied
    (O : Folder.GrandChallenge.NavierStokes.NonBlowupObstruction) :
    O.obstructionNonzeroIfBlowup :=
  Folder.GrandChallenge.NavierStokes.ns_blowup_obstruction_if_supplied O

theorem critical_norm_bounded_if_supplied
    (C : Folder.GrandChallenge.NavierStokes.CriticalControlCertificate) :
    C.criticalNormBounded :=
  Folder.GrandChallenge.NavierStokes.critical_norm_bounded_if_supplied C

theorem critical_control_preserves_true_nonlinearity_if_supplied
    (C : Folder.GrandChallenge.NavierStokes.CriticalControlCertificate) :
    C.preservesTrueNonlinearity :=
  Folder.GrandChallenge.NavierStokes.critical_control_preserves_true_nonlinearity_if_supplied
    C

theorem quantitative_regularity_control_if_supplied
    (C : Folder.GrandChallenge.NavierStokes.CriticalControlCertificate) :
    C.quantitativeRegularityControl :=
  Folder.GrandChallenge.NavierStokes.quantitative_regularity_control_if_supplied C

theorem averaged_blowup_warning_if_supplied
    (W : Folder.GrandChallenge.NavierStokes.AveragedBlowupWarning) :
    W.energyCancellationAloneInsufficient :=
  Folder.GrandChallenge.NavierStokes.averaged_blowup_warning_if_supplied W

theorem tao_sorting_if_supplied
    (T : Folder.GrandChallenge.NavierStokes.TaoSortingContract)
    (h1 : T.criticalControl.criticalNormBounded)
    (h2 : T.criticalControl.preservesTrueNonlinearity)
    (h3 : T.criticalControl.quantitativeRegularityControl) :
    Folder.GrandChallenge.NavierStokes.NonGlitchStream T.frame :=
  Folder.GrandChallenge.NavierStokes.tao_sorting_if_supplied T h1 h2 h3

theorem tao_gap_charts_glitch_candidate_if_supplied
    (T : Folder.GrandChallenge.NavierStokes.TaoSortingContract)
    (hgap :
      Folder.GrandChallenge.NavierStokes.CriticalControlGap
        T.criticalControl) :
    Folder.GrandChallenge.NavierStokes.GlitchCandidate T.frame :=
  Folder.GrandChallenge.NavierStokes.tao_gap_charts_glitch_candidate_if_supplied
    T hgap

end GrandChallenge
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c05ff2738c5bbf4bbc407c3a7f008defe4a4c03640bc0de6ee3634d40a6a4348 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
