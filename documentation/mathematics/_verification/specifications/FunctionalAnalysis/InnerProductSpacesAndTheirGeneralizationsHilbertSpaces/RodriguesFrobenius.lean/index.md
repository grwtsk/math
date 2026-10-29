# Verification target: Rodrigues Frobenius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e20714831b2902952d8cecd5183c607ba55b7d8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e20714831b2902952d8cecd5183c607ba55b7d8`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Core.SemanticIdentity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SkewAdjointGenerator](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/skewadjointgenerator.md) | 27 | `declaration-track:9950c390bdad3c8b12d0acb1dbfc9216cbc54eb043838c19bfca3ccbe59014d8` |
| 2 | `structure` | [GeneralizedRodrigues](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/generalizedrodrigues-source-edition-2.md) | 40 | `declaration-track:a6cf0ef8507321cfca541434765fbbf4f3f45db52c2c3b8e3d1efc08a42b1108` |
| 3 | `def` | [generalizedRodrigues](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/generalizedrodrigues.md) | 49 | `declaration-track:87d729392bed497bebe104f5f147f6c196a53cdb5ce2bca77c929345c4244b7c` |
| 4 | `theorem` | [generalizedRodrigues_isometry](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/generalizedrodrigues-isometry.md) | 55 | `result-track:c64deb9ed0df0f1b573eb58705b9dff0514d9e7bb0bf2aec2a8212b72c98ab32` |
| 5 | `structure` | [FrobeniusSemilinear](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/frobeniussemilinear.md) | 62 | `declaration-track:fc72a455223f7f352426a58628e2c6b95b745f51006d1dc37e89151baf588cd2` |
| 6 | `structure` | [FrobeniusPairing](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/frobeniuspairing.md) | 79 | `declaration-track:8c4ce8fa741da0427a240e1d4dcb57ce519edcec0784b4773dbe301d55e58266` |
| 7 | `structure` | [RodriguesFrobenius](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/rodriguesfrobenius.md) | 88 | `declaration-track:51c17bc15326ed2658a2aeb7ae0bb39b14254eef664f33edca9be4da57ac4b93` |
| 8 | `def` | [frobeniusPullback](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/frobeniuspullback.md) | 99 | `declaration-track:d50e565f75f7728de825ecd989e12dfbf304414853caa95f92f0229ca27328c3` |
| 9 | `def` | [rodriguesFrobenius](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/rodriguesfrobenius-source-edition-2.md) | 105 | `declaration-track:7255de97f71a18c55393ea38c311969d17f0310bc23acd8d4b3a0de622ce618b` |
| 10 | `theorem` | [rodriguesFrobenius_semilinear](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/rodriguesfrobenius-semilinear.md) | 113 | `result-track:b05cbf90e5a04e8b8b9f8aa5bc8c0ec92101f0f9e906d4a8fc68bedd2ab5817d` |
| 11 | `theorem` | [tensorRepresentation_preserves_frobenius](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/tensorrepresentation-preserves-frobenius.md) | 125 | `result-track:1641f73d446da2bbe04be85d09759aa0ba3c92074f882b7fbffdd7b7a8969fd7` |
| 12 | `structure` | [RodriguesFrobeniusNaturality](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/rodriguesfrobeniusnaturality.md) | 138 | `declaration-track:28217778c3210e98793c6ceea91a7a23c7013bd50712be954d5f8c4f8d31ac04` |
| 13 | `theorem` | [rodriguesFrobenius_natural](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/RodriguesFrobenius.lean/declarations/rodriguesfrobenius-natural.md) | 154 | `result-track:665a172829dfc11839027ed53984ec3ba2ce7bc4b0a7009b60d0089a8a6980c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=771592f7a34ab2e3ace568ca4bf81e6581892a6979835717e62f9428a33b5861 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/RodriguesFrobenius/Variant09716f9978e1433e08f7b10f7e906a9a4cf3c8431406286844a567cc0326c012.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
