# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ALGHENConditionalCompleteness.Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84beedc5e0842fb00d6372de99f966b1918e0164` · SHA-256 `2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Theorems.ALG03_PolarizedCompleteness
import FCRS.Algebraization.Theorems.ALG04_FormalPolarizedEffectivity
import FCRS.Algebraization.Theorems.HEN03_EssentialImageCharacterization
import FCRS.Algebraization.Theorems.HEN04_GeneratorCompleteness
import FCRS.Algebraization.Theorems.HEN05_HSGCriterion
import FCRS.Algebraization.Theorems.HEN07_CharacteristicBoundary
import FCRS.Algebraization.Theorems.HEN08_FiberCanonicity
import FCRS.Algebraization.Theorems.HEN10_PositiveCharacteristicAffine
import FCRS.Algebraization.Theorems.HEN11_UnrestrictedCompletenessFromHSG
import FCRS.Algebraization.Theorems.HEN12_ExtensionNonclosure
import FCRS.Algebraization.Theorems.HEN15_EffectiveTargetClosure
import FCRS.Algebraization.Theorems.HEN16_PositiveCharacteristicRoute
import FCRS.Algebraization.Theorems.MOD07_SemanticEquivalence
import FCRS.Algebraization.Theorems.TAN01_EffectiveTannaka
import FCRS.Algebraization.Theorems.TAN02_UnrestrictedUpgrade
import FCRS.Algebraization.Theorems.GLOB01_GlobalProvenance
import FCRS.Algebraization.Theorems.EXT01_ExtensionCriterion

namespace FCRS.Algebraization

open Theorems

/--
The scoped completeness theorem for `alg-hen-completeness-v1`.

The theorem proves polarized algebraization completeness, equivalence onto the
intrinsic algebraically generated Henselian target, the exact HSG upgrade
criterion, conditional ME1--ME8 semantic completeness, effective Tannakian
completeness, and global provenance.  It does not assume HSG itself.
-/
theorem alg_hen_scoped_conditional_completeness
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S)
    (h : AlgebraizationHypotheses S) :
    AlgebraizationCompleteSystem S := by
  have hAlg01 :=
    registry.alg01 h.polarizedProfile
  have hPolarized :=
    alg03_polarizedCompleteness
      S registry h.polarizedProfile
  have hFormal :=
    alg04_formalPolarizedEffectivity
      S registry h.formalPolarizedProfile
  have hCharacterization :=
    hen03_essentialImageCharacterization
      S registry h.henselianProfile h.sourceGenerated
  have hGeneratorEquivalence :=
    hen04_generatorCompleteness
      S registry h.henselianProfile h.sourceGenerated
  have hHSGCriterion :=
    hen05_hsgCriterion
      S registry h.henselianProfile h.sourceGenerated
  have hFiber :=
    hen08_fiberCanonicity
      S registry h.henselianProfile
  have hModuli :=
    mod07_semanticEquivalence
      S registry h.semanticSourceEffective
  have hTannaka :=
    registry.tan01 h.tannakaHypotheses
  have hGlobal :=
    registry.glob01 h.globalModelHypothesis

  exact {
    polarizedEquivalence := hPolarized
    polarizedQuasiInverse := hAlg01.quasiInverse
    formalPolarizedEffectivity := hFormal
    henselianImageCharacterization := hCharacterization
    henselianGeneratorEquivalence := hGeneratorEquivalence
    hsgCriterion := hHSGCriterion
    unrestrictedFromHSG := by
      intro hHSG
      exact hen11_unrestrictedCompletenessFromHSG
        S registry
        h.henselianProfile
        h.sourceGenerated
        hHSG
    characteristicBoundary := by
      intro hCharacteristic hCounterexample
      exact hen07_characteristicBoundary
        S registry hCharacteristic hCounterexample
    algebraizationFibersCanonical := hFiber
    positiveCharacteristicAffineInput :=
      registry.hen10
    extensionNonclosureBoundary :=
      registry.hen12
    effectiveTargetClosure :=
      registry.hen15 h.henselianProfile
    positiveCharacteristicRouteToHSG :=
      registry.hen16
    moduliObjectEffectivity :=
      registry.modPipeline
    moduliSemanticEquivalence :=
      ⟨h.semanticSourceEffective, hModuli⟩
    effectiveTannaka := hTannaka
    unrestrictedTannakaFromHSG := by
      intro hHSG
      exact registry.tan02
        h.tannakaHypotheses
        hHSG
    commonGlobalProvenance := hGlobal
    extensionImageCriterion := registry.ext01
  }

end FCRS.Algebraization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e738a2facc388a9b953a535be532304342e43a75395f7fc1abf8ad154f1286dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ALGHENConditionalCompleteness/Variant2c2643a914800e41be9123362f783677ff50fafb770eee22473b0c6fd663f862.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
