# Verification target: Positive Resolvent Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddd656b14382670c78238ec192069ea576369b6c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddd656b14382670c78238ec192069ea576369b6c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveshift.md) | 29 | `declaration-track:1ad215ef1d08e40b916180bd31db802b4dc1c7bd358d394c8b66f3363f7f1f32` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveshift-ispositive.md) | 33 | `result-track:52bcaa807de98dc52435a80aa1e913119c780d3ba871d2d431bd1fc9a492c979` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveshift-coercive.md) | 40 | `result-track:80c8b70347da6f849134b7c5ca25fa2a727b4a0697f1be3e4fd0ab9e4a460a6c` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveshift-isunit.md) | 55 | `result-track:b712c97c2d1f46b7216f0dc9d022fe9cc3107ea41a58f2b0f0bea9ea84cc3c25` |
| 5 | `def` | [positiveResolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveresolvent.md) | 66 | `declaration-track:1b151c8af63b6a48802d0e325d156ecfb44aaa160753d778f92ed63448133d89` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveshift-mul-resolvent.md) | 70 | `result-track:4f91ebaebb12e53c42740f18421969493325c54423ca6ee6bbbc4dca6a529c2c` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/resolvent-mul-positiveshift.md) | 75 | `result-track:7e3041ddeb2df1fb449aecc66c4524071cba4ade468fe72033f0267b95aa74a7` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveshift-resolvent-apply.md) | 80 | `result-track:7b110b0e05d7bd4ba7781519b54ed057be475a005077214f28a6f41461817e18` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveresolvent-norm-le.md) | 87 | `result-track:04a7467e8604b5bff65bf00561ec747f2872ceb7beb1de6fd59d92196a5834e3` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveresolvent-ispositive.md) | 103 | `result-track:ef8bd49081475e71023e778df20b2d5a66dfcfb63b782f56a6e0c5abe7fa97fc` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveresolvent-sub.md) | 114 | `result-track:ef4cecf1e205ab0868fac1d01a10a8c677163786dd3519fb297de7cf57d4a4dd` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/positiveresolvent-sub-norm-le.md) | 126 | `result-track:102c223634d6985e791f4d774aee94d45d1123b75a4ee42902e4027ff48442b4` |
| 13 | `def` | [regularizedMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/regularizedmass.md) | 140 | `declaration-track:de150dfda0a055d9950b677aa7c1cdb92c7872b8b87a545c23b8d6cfde27be9b` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/abs-re-inner-map-le.md) | 144 | `result-track:c2df93cddb03a6f0e234fc6d9a241e3d4b1c6f3da91d4aba8d8342c066272eb0` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/regularizedmass-sub-abs-le.md) | 153 | `result-track:88a67ed2f15755a8c9eb9a613d2691238a67e1d3525af2dbff5ba39846086203` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventNamespaced.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 173 | `result-track:765f5a008146b3b707c5d0a7890bc009e4695bca75a546f90647309114fe9f98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d18e29597232f53c0186c43fdf84b5f02e2f52430b8d658f74efe8d9728a4e0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PositiveResolvent/Variant3dbce1f95bcec108f0b0df89fa7c1224e15786bf80b6c63768d9c5e7e621ba40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
