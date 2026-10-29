# Verification target: Hahn Banach Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef4fb60f9e0361bd2c518b2c65f8996819ad14e5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/HahnBanachPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/HahnBanachPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef4fb60f9e0361bd2c518b2c65f8996819ad14e5`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Module.Dual.exists_extension_of_le_seminorm_real](../../../../FunctionalAnalysis/HahnBanachPublic.lean/declarations/module-dual-exists-extension-of-le-seminorm-real.md) | 38 | `result-track:efce6da8198084cfc2581314ced9f687d5524a03984185893424f296f1a32dec` |
| 2 | `theorem` | [Module.Dual.exists_extension_of_le_seminorm](../../../../FunctionalAnalysis/HahnBanachPublic.lean/declarations/module-dual-exists-extension-of-le-seminorm.md) | 50 | `result-track:d516031b772131975358f73d3134cd925d845eb3db3d3e29396c426bdb934079` |
| 3 | `theorem` | [Module.Dual.exists_continuous_extension_of_le_seminorm_real](../../../../FunctionalAnalysis/HahnBanachPublic.lean/declarations/module-dual-exists-continuous-extension-of-le-seminorm-real.md) | 70 | `result-track:3b98422b9251d32ac35fd71e67407cfd964e6088fcd0c8883fcd8f0921e10621` |
| 4 | `theorem` | [Module.Dual.exists_continuous_extension_of_le_seminorm](../../../../FunctionalAnalysis/HahnBanachPublic.lean/declarations/module-dual-exists-continuous-extension-of-le-seminorm.md) | 82 | `result-track:e229156adaf3e09549a48f7f6d4ae4b492fb6e86bd758cf98fc7665996aba0f1` |
| 5 | `theorem` | [StrongDual.exists_extension](../../../../FunctionalAnalysis/HahnBanachPublic.lean/declarations/strongdual-exists-extension.md) | 91 | `result-track:736bdd9a77e7ebd10d096bd53503912b5318ece656f10a842492805e66254534` |
| 6 | `lemma` | [ContinuousLinearMap.exist_extension_of_finiteDimensional_range](../../../../FunctionalAnalysis/HahnBanachPublic.lean/declarations/continuouslinearmap-exist-extension-of-finitedimensional-range.md) | 106 | `result-track:926b8364e44a16171b9d638a3fa9ea757cd29bc0ee49b6770230f4ffa7002a56` |
| 7 | `lemma` | [Submodule.ClosedComplemented.of_finiteDimensional](../../../../FunctionalAnalysis/HahnBanachPublic.lean/declarations/submodule-closedcomplemented-of-finitedimensional.md) | 121 | `result-track:57d3734fe16029954480a523be251177655aef8a76caf467c29d168d089d2907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85c57914dd73c46ce604e97582dbb75e76ca61fbcc03b83ec6ce681e5983f6ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
