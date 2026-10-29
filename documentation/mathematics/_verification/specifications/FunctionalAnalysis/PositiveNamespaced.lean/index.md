# Verification target: Positive Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e902dbf54a98f4f47f897c942d8ca7ab5321a65",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Positive/Variant6ce28767a461c2f5911e9991c62d497fa75bd0d8c24b969707d0383b73342a91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PositiveNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PositiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e902dbf54a98f4f47f897c942d8ca7ab5321a65`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Positive/Variant6ce28767a461c2f5911e9991c62d497fa75bd0d8c24b969707d0383b73342a91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Positive/Variant6ce28767a461c2f5911e9991c62d497fa75bd0d8c24b969707d0383b73342a91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPositive](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive.md) | 60 | `declaration-track:6328f8759582b0377ca9db8a973ae09b9698f8e8435880e85a1d71714575aef5` |
| 2 | `theorem` | [IsPositive.isSelfAdjoint](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-isselfadjoint.md) | 63 | `result-track:1d32444bf21fb42badc9bb71d4ac5645dc1c6f9dc844a9416e215b55787bd0dc` |
| 3 | `theorem` | [IsPositive.inner_nonneg_left](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-inner-nonneg-left.md) | 66 | `result-track:71ff49ebc83b3f06e0f4af07a9f7cd34361b04573f90a578c663182fd226994f` |
| 4 | `theorem` | [IsPositive.inner_nonneg_right](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-inner-nonneg-right.md) | 70 | `result-track:8b5d423977827fa0158c602551c293b9bacd8e80cff12823566843abd67ee6e8` |
| 5 | `theorem` | [isPositive_zero](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-zero.md) | 73 | `result-track:c342b66e1e063147bcc9dd86c7007070dc95b7ff4748f217b493a27dead224f3` |
| 6 | `theorem` | [isPositive_one](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-one.md) | 78 | `result-track:bb38e3f42c9cdf94710a469867ed8bbc964c40348a047e828ae0380839a7551e` |
| 7 | `theorem` | [IsPositive.add](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-add.md) | 81 | `result-track:e8975cdea5063fe4599ab0c525773d059f8fdb76ed7fb1fcd6ae4cb22024c058` |
| 8 | `theorem` | [IsPositive.conj_adjoint](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-conj-adjoint.md) | 87 | `result-track:52f6a79868d383b36c34129d40cedc40120f819084212db6fab4e99fc9eafb3c` |
| 9 | `theorem` | [IsPositive.adjoint_conj](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-adjoint-conj.md) | 93 | `result-track:952c231dbf3659b619abdbea052f6c4bc72eec95a8b86caf09d24600f5f826f7` |
| 10 | `theorem` | [IsPositive.conj_orthogonalProjection](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-conj-orthogonalprojection.md) | 98 | `result-track:235fa4fe8f9c4f7f1b6516e68a04d5bb4ce10a1896d2bfbfeb9b6e43f6c0d8ad` |
| 11 | `theorem` | [IsPositive.orthogonalProjection_comp](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-orthogonalprojection-comp.md) | 105 | `result-track:06cff35365ce23d2e069ddc42c35fae31e99f2bf4e1fc85d052d6c98895061af` |
| 12 | `lemma` | [antilipschitz_of_forall_le_inner_map](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/antilipschitz-of-forall-le-inner-map.md) | 112 | `result-track:9cba9203093badf98c58416376db3cbe00a262450b0614fd87d414b06b2aed8e` |
| 13 | `lemma` | [isUnit_of_forall_le_norm_inner_map](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/isunit-of-forall-le-norm-inner-map.md) | 123 | `result-track:892f67dac0ab43666eab15ef0f71403ab7be718bc913dae4d688506efa1260b7` |
| 14 | `theorem` | [isPositive_iff_complex](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/ispositive-iff-complex.md) | 139 | `result-track:2df35c39b4befba0dfe669df700d850a1a28f55bd32c2f0091d275acbd2a52e3` |
| 15 | `instance` | [instLoewnerPartialOrder](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/instloewnerpartialorder.md) | 153 | `declaration-track:7d916ee1373b229f58cf31f2718c4e83a33294dfffcfd4f76bde586154b295f2` |
| 16 | `lemma` | [le_def](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/le-def.md) | 170 | `result-track:c7347365cb63de1d7de4f24546030bac25da2ec5db2b24c18ea4baee0504bc55` |
| 17 | `lemma` | [nonneg_iff_isPositive](../../../../FunctionalAnalysis/PositiveNamespaced.lean/declarations/nonneg-iff-ispositive.md) | 172 | `result-track:3fa2a7fb0125ba039f575aa1b32c4fc17d58826dc40a4c06525c5be77cb3cec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7434e5479ac63346035490e99a72fb04b8b2c6d9f695d1ae574d2f8c53c8a250 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Positive/Variant6ce28767a461c2f5911e9991c62d497fa75bd0d8c24b969707d0383b73342a91.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Positive/Variant6ce28767a461c2f5911e9991c62d497fa75bd0d8c24b969707d0383b73342a91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
