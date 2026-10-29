# Verification target: Resources Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "975eee42042529c49a0dfa757d86bb1648bb3638",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResourcesEdition1.lean/index.md) · [Full source](../../../../Combinatorics/ResourcesEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `975eee42042529c49a0dfa757d86bb1648bb3638`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.BigOperators` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Coordinate](../../../../Combinatorics/ResourcesEdition1.lean/declarations/coordinate.md) | 18 | `declaration-track:b22fef13fe0f1d14b651c4892b2b283d2b5dde68b0755ea765beb4e52db6fdf7` |
| 2 | `instance` | [coordinateFintype](../../../../Combinatorics/ResourcesEdition1.lean/declarations/coordinatefintype.md) | 50 | `declaration-track:4d5ccb7f3ae2335973095c5267749a1cf0640bcf7df7b18e57f0517f10efbd4b` |
| 3 | `abbrev` | [Vector](../../../../Combinatorics/ResourcesEdition1.lean/declarations/vector.md) | 58 | `declaration-track:f54455913dba4d27d812ba3ef262aa95ccf6d95b0f978035d7ddc550882050fc` |
| 4 | `abbrev` | [ResourceVector](../../../../Combinatorics/ResourcesEdition1.lean/declarations/resourcevector.md) | 61 | `declaration-track:f79357e1339e552338c25859ac6c44fd332132b534109d0e2ca3a5ad3ae08a4d` |
| 5 | `def` | [ComponentwiseLE](../../../../Combinatorics/ResourcesEdition1.lean/declarations/componentwisele.md) | 64 | `declaration-track:7b4810581f616e552b401f9efd4826992ff21076a9435e8b24cf921906ae74a7` |
| 6 | `def` | [StrictPareto](../../../../Combinatorics/ResourcesEdition1.lean/declarations/strictpareto.md) | 68 | `declaration-track:e883331a6da52a3d8b8384de416d283fb8d9c93cc41bd1e8ee9b3cffb2742a7e` |
| 7 | `def` | [Incomparable](../../../../Combinatorics/ResourcesEdition1.lean/declarations/incomparable.md) | 72 | `declaration-track:6970dad68953dae9007e4f7ec9ce6be920702eef8c196be17e09fcb53db14cdd` |
| 8 | `theorem` | [componentwise_refl](../../../../Combinatorics/ResourcesEdition1.lean/declarations/componentwise-refl.md) | 76 | `result-track:adffa20319cf383e796ce7096a49a8019d7c5f3e8d46a6608ad4f870d6355d31` |
| 9 | `theorem` | [componentwise_trans](../../../../Combinatorics/ResourcesEdition1.lean/declarations/componentwise-trans.md) | 81 | `result-track:2a703843ab3b802e442894dd6dff2c245f1bbfba59cee17c4893577c4724ee2c` |
| 10 | `theorem` | [componentwise_antisymm](../../../../Combinatorics/ResourcesEdition1.lean/declarations/componentwise-antisymm.md) | 87 | `result-track:b6e9970125af7107ff3982c76146e4ed41314934854a96ef91fd941db85dcb94` |
| 11 | `theorem` | [componentwise_iff_product_le](../../../../Combinatorics/ResourcesEdition1.lean/declarations/componentwise-iff-product-le.md) | 93 | `result-track:e71fcd46ecf597c52a2e3691e7850cc532a7741c61e61d181220966712ca45a9` |
| 12 | `theorem` | [strictPareto_irrefl](../../../../Combinatorics/ResourcesEdition1.lean/declarations/strictpareto-irrefl.md) | 97 | `result-track:3868778e29bcb3335f77b9130b543c6ec05522f3174dcc9924a158f983ad1ec0` |
| 13 | `theorem` | [strictPareto_trans](../../../../Combinatorics/ResourcesEdition1.lean/declarations/strictpareto-trans.md) | 103 | `result-track:72f70e6470a8f65eb9fb38912d997587f2c9ca63451ae56c75edf94955b83614` |
| 14 | `theorem` | [strictPareto_not_reverse](../../../../Combinatorics/ResourcesEdition1.lean/declarations/strictpareto-not-reverse.md) | 111 | `result-track:5627205c8664013bbadd042723c10b4fec664155d31ae326e3470285da041de9` |
| 15 | `theorem` | [incomparable_symm](../../../../Combinatorics/ResourcesEdition1.lean/declarations/incomparable-symm.md) | 118 | `result-track:9ae9b3982f930921ea94e9f822f4957cd686d51406a2e0d63598350b8a5f059a` |
| 16 | `theorem` | [incomparable_no_pareto](../../../../Combinatorics/ResourcesEdition1.lean/declarations/incomparable-no-pareto.md) | 123 | `result-track:b603e71ddac7928cdf3b00fa76daae4c6475bbc03fa8e00475c988f6964a1976` |
| 17 | `theorem` | [componentwise_reindex_iff](../../../../Combinatorics/ResourcesEdition1.lean/declarations/componentwise-reindex-iff.md) | 129 | `result-track:96362af69847d622cadb429b7f3ab68196660c18a76a0f1b160fd20965b2cef0` |
| 18 | `theorem` | [incomparable_reindex_iff](../../../../Combinatorics/ResourcesEdition1.lean/declarations/incomparable-reindex-iff.md) | 140 | `result-track:636c9daaa1ba65cefd78a8e858802ed07245a20bcc1b76218d61ae2c6886825d` |
| 19 | `theorem` | [componentwise_add_common_iff](../../../../Combinatorics/ResourcesEdition1.lean/declarations/componentwise-add-common-iff.md) | 147 | `result-track:ca11ae40e8850c1f88e9bd36be48fd4d33a1a820fa092a63b3175ad7fab43406` |
| 20 | `theorem` | [incomparable_add_common_iff](../../../../Combinatorics/ResourcesEdition1.lean/declarations/incomparable-add-common-iff.md) | 155 | `result-track:042127055cb145f4e80ffe94efa91b69b078a757dcfd6e87d08acb4cb84a30cc` |
| 21 | `def` | [ParetoMember](../../../../Combinatorics/ResourcesEdition1.lean/declarations/paretomember.md) | 163 | `declaration-track:173c67e3e4a96196863a9589751a1d8170efdcfb5811fe4db698ace90da1d8f8` |
| 22 | `theorem` | [incomparable_pair_retained](../../../../Combinatorics/ResourcesEdition1.lean/declarations/incomparable-pair-retained.md) | 167 | `result-track:2e79b529daf037c35fc1103be231b626189627c3fd856655def52032179b09bc` |
| 23 | `structure` | [ScalarProjection](../../../../Combinatorics/ResourcesEdition1.lean/declarations/scalarprojection.md) | 185 | `declaration-track:dd68a07d85a556cc9dfa8392ba2a5589d36a4da34823c83e2d34e6fd21d45884` |
| 24 | `def` | [ScalarProjection.value](../../../../Combinatorics/ResourcesEdition1.lean/declarations/scalarprojection-value.md) | 194 | `declaration-track:17a6ed184282b8a10c54e693d080d7c7a4d193f5ad644efb6feed26f4e7da75b` |
| 25 | `theorem` | [ScalarProjection.monotone](../../../../Combinatorics/ResourcesEdition1.lean/declarations/scalarprojection-monotone.md) | 199 | `result-track:5928b015ceb9dfbf997fdd4c99660b8fb3839fff5c42cbaae294133b0fccab5c` |
| 26 | `structure` | [FrozenObjective](../../../../Combinatorics/ResourcesEdition1.lean/declarations/frozenobjective.md) | 208 | `declaration-track:9fe9f8e83593df8974f774938eb0d7475639ecaa451230a95d504d2c573c6dea` |
| 27 | `def` | [FrozenObjective.Admissible](../../../../Combinatorics/ResourcesEdition1.lean/declarations/frozenobjective-admissible.md) | 223 | `declaration-track:ef70e77d266c344cf178e95dd468232da2eb1d3d964e1b056883c08cc67a9420` |
| 28 | `theorem` | [FrozenObjective.admissible_of_le](../../../../Combinatorics/ResourcesEdition1.lean/declarations/frozenobjective-admissible-of-le.md) | 228 | `result-track:339034fb2453b33866f7d13be02002b49bc30ad8df41d64bd1b349fb344160fd` |
| 29 | `inductive` | [Measurement](../../../../Combinatorics/ResourcesEdition1.lean/declarations/measurement.md) | 234 | `declaration-track:33c8b7dbd5bbfe8d9d7d0a13de4aff00a024e9a7690519ef0967db3931cfeec4` |
| 30 | `def` | [FullyMeasured](../../../../Combinatorics/ResourcesEdition1.lean/declarations/fullymeasured.md) | 244 | `declaration-track:e7aa6b6d337e71142cf49a2d23dbb091a879ff134ee4106f74c909d2c2bf7a2c` |
| 31 | `theorem` | [notMeasured_blocks_completion](../../../../Combinatorics/ResourcesEdition1.lean/declarations/notmeasured-blocks-completion.md) | 248 | `result-track:c3fcd4c1eed4e50317decc470211786ffd2a4af9850e8fe1aade2120c5994e88` |
| 32 | `theorem` | [unsupported_ne_measured_zero](../../../../Combinatorics/ResourcesEdition1.lean/declarations/unsupported-ne-measured-zero.md) | 257 | `result-track:8e65aa696bdd3e796639240341de9a60eb67ab7a6d78ffe4633613f066e693cd` |
| 33 | `theorem` | [notMeasured_ne_measured_zero](../../../../Combinatorics/ResourcesEdition1.lean/declarations/notmeasured-ne-measured-zero.md) | 261 | `result-track:33814c8aabca4060602318f4bfeba099e5af1cbabcad66166e7bd9f91fa4a35b` |
| 34 | `structure` | [ResourceReport](../../../../Combinatorics/ResourcesEdition1.lean/declarations/resourcereport.md) | 265 | `declaration-track:2fe6ba7000883d061e52cfdbdbcc0c56e69befcfef575c9b09280fdc4cf20af8` |
| 35 | `def` | [lowDimensionProfile](../../../../Combinatorics/ResourcesEdition1.lean/declarations/lowdimensionprofile.md) | 274 | `declaration-track:654878afa620e1d33f7b18d3c02bcff6c19c601f78d04136b7218e3060100549` |
| 36 | `def` | [lowDepthProfile](../../../../Combinatorics/ResourcesEdition1.lean/declarations/lowdepthprofile.md) | 280 | `declaration-track:ad0bed0a3ce6778a8f01494a07537dadf603600b218d5f4e4fdf2b2e713ee195` |
| 37 | `theorem` | [dimension_depth_incomparable](../../../../Combinatorics/ResourcesEdition1.lean/declarations/dimension-depth-incomparable.md) | 286 | `result-track:4bd453c3f7156ef2fd8a11e81fe1dc142cf21fa613d3aadbc8ef8d6f99515709` |
| 38 | `theorem` | [depth_objective_preserves_tradeoff](../../../../Combinatorics/ResourcesEdition1.lean/declarations/depth-objective-preserves-tradeoff.md) | 296 | `result-track:638320b98ff46a0e99ed6c34e7bbe7a2623f44c7ccb650bdf53d38d74418c89a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bff023bf51888007e72ffc4b21a9de18f8a1aef5ea1940642e0f4faec193ba6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Resources/Variant303571b9a536ca9bfbb529cc9ec2971b7a5631ddf46a4f259f98fbe0cf10e67e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
