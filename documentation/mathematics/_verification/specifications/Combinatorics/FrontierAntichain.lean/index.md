# Verification target: Frontier Antichain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93a25c0a8ece3b2c4552bd4870aa1af1b93092e3",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FrontierAntichain.lean/index.md) · [Full source](../../../../Combinatorics/FrontierAntichain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93a25c0a8ece3b2c4552bd4870aa1af1b93092e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Prod` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Requirement](../../../../Combinatorics/FrontierAntichain.lean/declarations/requirement.md) | 14 | `declaration-track:ed5010aa72156e7e9a0491fbeba730f01c2d01085a0bc777e30ff12a39e33fc9` |
| 2 | `abbrev` | [FrontierFamily](../../../../Combinatorics/FrontierAntichain.lean/declarations/frontierfamily.md) | 17 | `declaration-track:ade8583144b209640f9d03e2468bc87747403b91912820b38b449e1e361c844e` |
| 3 | `def` | [frontierZero](../../../../Combinatorics/FrontierAntichain.lean/declarations/frontierzero.md) | 20 | `declaration-track:a0864f10205c384d0b28092612db58156b2f5972f40df786fca4af95562cc5c3` |
| 4 | `def` | [frontierOne](../../../../Combinatorics/FrontierAntichain.lean/declarations/frontierone.md) | 25 | `declaration-track:8ad429a614de762ee7c88920a67acbd9c7ac6fc6b8c52f8850eb5ba37c19618a` |
| 5 | `def` | [InclusionMinimal](../../../../Combinatorics/FrontierAntichain.lean/declarations/inclusionminimal.md) | 31 | `declaration-track:e230d9debe9e8a61938c60822440c173deaf379096bf0eb2ba99ab1c84539d17` |
| 6 | `def` | [normalizeFrontier](../../../../Combinatorics/FrontierAntichain.lean/declarations/normalizefrontier.md) | 39 | `declaration-track:03a9f4e7a28cb364d72743e1c8ae240a060c18a9680ed1e2fac4160d007d1c93` |
| 7 | `def` | [frontierOr](../../../../Combinatorics/FrontierAntichain.lean/declarations/frontieror.md) | 47 | `declaration-track:617311dc880bed8cb3be49fd4179322b073a5b47b7ec1e596e654470af5e2a20` |
| 8 | `def` | [frontierAnd](../../../../Combinatorics/FrontierAntichain.lean/declarations/frontierand.md) | 54 | `declaration-track:c68f2a0d359a853530df483c854cd1ac26978b0e97646f9e60df1123aed09903` |
| 9 | `theorem` | [frontierZero_ne_frontierOne](../../../../Combinatorics/FrontierAntichain.lean/declarations/frontierzero-ne-frontierone.md) | 63 | `result-track:86ecfbc0e59c6a772a48844a8d1d66190fdea3c9f8a41987c692355c3b80e4ba` |
| 10 | `theorem` | [empty_mem_frontierOne](../../../../Combinatorics/FrontierAntichain.lean/declarations/empty-mem-frontierone.md) | 69 | `result-track:7fd3a45913a34d07ac92ac2d919c3c8ffce1502e09a8e2bfedff59e47234c0fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d18c548235a2f00ed0bd0ac0fbddd45f26f1085c6421defcb31131ba39735094 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FrontierAntichain/Variantd2095232afd598823e0d058a74430c7a7a130753dd2162acced0beaa1f79a2cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
