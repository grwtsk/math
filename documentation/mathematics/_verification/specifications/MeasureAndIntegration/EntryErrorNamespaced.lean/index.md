# Verification target: Entry Error Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4fef11a08b062807a2d6326d30b960355b150c0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4fef11a08b062807a2d6326d30b960355b150c0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cauchyK](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/cauchyk.md) | 37 | `declaration-track:684e8eefdb4100a01d051d3c6a2d4fee8fd331a445c3e4071f2c71757300ab75` |
| 2 | `theorem` | [cauchyK_pos](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/cauchyk-pos.md) | 39 | `result-track:db119016547fb3269b12d44df89de86c362c9dc265aca3932461da1fa9009b31` |
| 3 | `theorem` | [cauchyK_nonneg](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/cauchyk-nonneg.md) | 40 | `result-track:fd7abc40b91b8081d7f5712f2f415bdc85c683bc47cf8adcb56a333562179428` |
| 4 | `theorem` | [cauchyK_le_one](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/cauchyk-le-one.md) | 41 | `result-track:bab04b5e3558b887edf62016dc6569d447adb034eefc23b37b21beb6d205c2b1` |
| 5 | `theorem` | [continuous_cauchyK](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/continuous-cauchyk.md) | 44 | `result-track:ab392e57810a0fa8aba507c32438cf2b58e10ce1882893ec805586ae0f088762` |
| 6 | `theorem` | [integrable_cauchyK](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/integrable-cauchyk.md) | 48 | `result-track:96e41e96ae263b860c3cfb0a2513be156913f8afa8e005613d3974d8c1045156` |
| 7 | `theorem` | [integral_cauchyK](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/integral-cauchyk.md) | 52 | `result-track:b06b2ed3d78dc2a2721e5c63e25fd219ed256c0c540796426d1dc56e578b4b4c` |
| 8 | `theorem` | [cauchyK_mul_le](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/cauchyk-mul-le.md) | 59 | `result-track:33d6d8b6d53ef276cfc557076c3c7ef61302ba4c58739cf38ea8ceb1716bf53f` |
| 9 | `theorem` | [integrable_cauchyK_mul](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/integrable-cauchyk-mul.md) | 77 | `result-track:3257c1822ddafb61ed70cdf4b4d5e8b579777e2f723fa0191b3d450734ad46e6` |
| 10 | `theorem` | [integral_cauchyK_mul_le](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/integral-cauchyk-mul-le.md) | 84 | `result-track:af203b6ae2500c1c054a929d622fe2c27b93a1b6f04f79f25269eb4fc142885b` |
| 11 | `theorem` | [cauchyK_far](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/cauchyk-far.md) | 97 | `result-track:55b5428c126d69297ee9be5cf4361e560f70e52a42311dd82ea24e00da591a1c` |
| 12 | `theorem` | [setIntegral_cauchyK_mul_far](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/setintegral-cauchyk-mul-far.md) | 108 | `result-track:dd50630ac2f9ca58393fa7750dba5275ef36f0cfcb01a3fe8087711bbd23fe87` |
| 13 | `theorem` | [abs_sub_midpoint_le](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/abs-sub-midpoint-le.md) | 123 | `result-track:bd8dcbdd93091665c52032c5180eb706233e65bf6e4bd7cd6952e864ba783271` |
| 14 | `theorem` | [entry_core](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/entry-core.md) | 129 | `result-track:e01fa05503c07b4862bc7dbabc2d8b0696913eb4e5d8724ad065ecac358cc160` |
| 15 | `theorem` | [entry_core_mirror](../../../../MeasureAndIntegration/EntryErrorNamespaced.lean/declarations/entry-core-mirror.md) | 207 | `result-track:c38af54f8673aa50948a75de5f819e1e952d97e9eb92c8a203546a4643e30402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47f8dfc0360e222e1ab3fd013d2e962689f79d02f09cda1847c3e978e2b6a7ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/EntryError/Variant4d88486eb4b1ba53037634afb80797b9d7b96f208a79b2b5014a441fa9871a83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
