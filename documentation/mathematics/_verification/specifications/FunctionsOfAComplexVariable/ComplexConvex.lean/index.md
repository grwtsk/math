# Verification target: Complex Convex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3327119a09952c0aff29779fa66fd53887d84cb6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3327119a09952c0aff29779fa66fd53887d84cb6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.ReImTopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Combination` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.PathConnected` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [convexHull_reProdIm](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convexhull-reprodim.md) | 24 | `result-track:28795a0ad3779685dfd84ce570c021557d0d3dc38237c0868a1fd9b8f4e5305c` |
| 2 | `lemma` | [starConvex_slitPlane](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/starconvex-slitplane.md) | 33 | `result-track:d9718982493fb1e08a765e0850d61f3a774cdef733798b661f696772913cc355` |
| 3 | `lemma` | [starConvex_ofReal_slitPlane](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/starconvex-ofreal-slitplane.md) | 37 | `result-track:e6f76f408ec3fb23e1aac04c12f88d854e541ebe9d2caaf5edc8e9d121b8546b` |
| 4 | `lemma` | [starConvex_one_slitPlane](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/starconvex-one-slitplane.md) | 41 | `result-track:6985219ae9775f41ab0635f3ad1803c573af127e83192b80238d14e0d22de964` |
| 5 | `theorem` | [convex_halfSpace_re_lt](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-re-lt.md) | 49 | `result-track:0c0eaf249f04af0f168023bb01630092ef324d534392efa527423f36c650cd79` |
| 6 | `theorem` | [convex_halfSpace_re_le](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-re-le.md) | 53 | `result-track:db038f2ccf5ff8d7bdb395cb0840226829738bf4ff469a43662bccca2c1138d4` |
| 7 | `theorem` | [convex_halfSpace_re_gt](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-re-gt.md) | 57 | `result-track:8345aeb8c9e6a1318161cec21013ee9744eb839be5a11a04c4190aa0e95a51b3` |
| 8 | `theorem` | [convex_halfSpace_re_ge](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-re-ge.md) | 61 | `result-track:38a9683cedf6434fb6e92bd36920b08f8ae1ad0d41aedbd85ab2626be3e8b251` |
| 9 | `theorem` | [convex_halfSpace_im_lt](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-im-lt.md) | 65 | `result-track:58b1d6e5046377bd4a7a662d4fd49cf4d8bebf8351ac0f92cf0bc911c28ead34` |
| 10 | `theorem` | [convex_halfSpace_im_le](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-im-le.md) | 69 | `result-track:d6638b53e2c3bfe72dc75542337ae1171efd27065ab94b2baac1f1fed00f7ba1` |
| 11 | `theorem` | [convex_halfSpace_im_gt](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-im-gt.md) | 73 | `result-track:3888c24628485c4831ad0c1c0e83dbefa16abf86da8eea64472787f588c7af1d` |
| 12 | `theorem` | [convex_halfSpace_im_ge](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/convex-halfspace-im-ge.md) | 77 | `result-track:9c61dc240276fe40c2f77938b96bf1688c4e318108a25f91dd85f1cf87c5a050` |
| 13 | `lemma` | [Complex.isConnected_of_upperHalfPlane](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/complex-isconnected-of-upperhalfplane.md) | 81 | `result-track:bfeb03bac16d770111b0834efac357a7e5b9f0ffcaa5aebee6b91c441de4903c` |
| 14 | `lemma` | [Complex.isConnected_of_lowerHalfPlane](../../../../FunctionsOfAComplexVariable/ComplexConvex.lean/declarations/complex-isconnected-of-lowerhalfplane.md) | 86 | `result-track:67aeb021a44de1ed44406f001c7fdf5abfe023638b82eae7830dd52a6da384a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cb1f0dbb0b85b2072321e5ddb40ad8095b0c56f2eeca750d16086e76b38040c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Convex/Variantfc34c0a8dbc72c4353b7dc3f404a813556d89bfa0712482e3edbf8461816fd84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
