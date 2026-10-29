# Compendium — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77097d7e48c59e06fa6cf660873d46ad96c06ce4` · SHA-256 `4583c5167eea348d4635d623cd463259afe0012adb6537674d2af32a1179a9fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.Literature.Paper

/-!
# Folder.CanonicalPath.Literature.Compendium

Radiation role: research-boundary
BinaryMatrix spine: This module records an evidence-guided paper compendium.
Ontology: canonical.literature_compendium
Pivot role: none
Zero typology: none
Contract boundary: external-witness
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath
namespace Literature

structure PhasePaperCluster where
  phaseLabel : String
  papers : List PaperReference
  recommendedOrder : List String
  strategySummary : String
  mainRisk : String

structure PhaseSummary where
  cluster : PhasePaperCluster
  lowInnovationRoute : String
  theoremTarget : String
  doesNotProve : List String

def phaseICluster : PhasePaperCluster := {
  phaseLabel := "Phase I: Perfect family and determinant/K-index propagation"
  papers := []
  recommendedOrder := [
    "Conrad",
    "HallBaseChange",
    "KnudsenMumford",
    "Grivaux",
    "AtiyahSingerIV",
    "BismutFamilies"
  ]
  strategySummary :=
    "Use arithmetic moduli, stack base change, determinant of cohomology, deformation invariance, and family index theory to replace pointwise anchors by componentwise family-index propagation."
  mainRisk :=
    "The section complex must be shown to be a relative perfect object over the relevant arithmetic family."
}

def phaseIICluster : PhasePaperCluster := {
  phaseLabel := "Phase II: Analytic continuation maps and derived transport"
  papers := []
  recommendedOrder := [
    "RodgersTao",
    "SalamonWeber",
    "Weber",
    "DeBruijn",
    "Newman"
  ]
  strategySummary :=
    "Use Rodgers-Tao for analytic zero dynamics, then import heat-flow continuation-map technology before sheafification."
  mainRisk :=
    "Rodgers-Tao does not itself construct chain maps or quasi-isomorphisms of sheaf complexes."
}

def phaseIIICluster : PhasePaperCluster := {
  phaseLabel := "Phase III: Trace identity, realization comparison, and spectral-boundary criterion"
  papers := []
  recommendedOrder := [
    "Quillen",
    "AtiyahPatodiSinger",
    "BismutCheeger",
    "BenZviNadler",
    "CisinskiTabuada",
    "ToenVezzosi",
    "Bloch",
    "GilletMessing",
    "BhattDeJong",
    "BhattMorrowScholze",
    "Connes",
    "Deninger"
  ]
  strategySummary :=
    "Build the trace bridge compositionally: superconnection trace, categorical trace, crystalline/Witt/prismatic realization, then only finally spectral-boundary criterion."
  mainRisk :=
    "The trace identity does not by itself force critical-line alignment; positivity and self-adjointness are still required."
}

theorem phaseI_recommended_order_nonempty :
    phaseICluster.recommendedOrder ≠ [] := by
  decide

theorem phaseII_recommended_order_nonempty :
    phaseIICluster.recommendedOrder ≠ [] := by
  decide

theorem phaseIII_recommended_order_nonempty :
    phaseIIICluster.recommendedOrder ≠ [] := by
  decide

end Literature
end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ecf9a738f2b23bc5afa6ba0a0dc50bac26699112118d50441e4746fa047703d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Compendium/Variant4583c5167eea348d4635d623cd463259afe0012adb6537674d2af32a1179a9fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
