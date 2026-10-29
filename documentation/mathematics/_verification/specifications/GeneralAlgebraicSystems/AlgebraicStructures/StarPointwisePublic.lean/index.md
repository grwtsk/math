# Verification target: Star Pointwise Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faf69d16665283420fc53997604baf079894ba8c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Pointwise/Variantd8bcfc6a9e5f581d2ba216481bc54ee15f88478fc8856fefeb014d32d16a2e7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faf69d16665283420fc53997604baf079894ba8c`.

Source path: `GRWTSK/Algebra/Pointwise/Variantd8bcfc6a9e5f581d2ba216481bc54ee15f88478fc8856fefeb014d32d16a2e7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Pointwise/Variantd8bcfc6a9e5f581d2ba216481bc54ee15f88478fc8856fefeb014d32d16a2e7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star.md) | 39 | `declaration-track:4e2510a350a8509bd421ef605a2e5f941e2c8575aa737fd678970b8ad5f35a3d` |
| 2 | `theorem` | [star_empty](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-empty.md) | 44 | `result-track:cf855ad58b32c42f03c1b246115dc573cda11c5047e58fc55ecdb777dbce2b26` |
| 3 | `theorem` | [star_univ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-univ.md) | 47 | `result-track:b58fcc15a9604ac4d13b53c3dd6bc3fcd41d0c160b0d6cbfd22ad183104be0b6` |
| 4 | `theorem` | [nonempty_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/nonempty-star-source-edition-2.md) | 50 | `result-track:c232f7d4cae8c77e883d80aeb234aaeae66a2f57d9e765e5d02f03ef5fe0d665` |
| 5 | `theorem` | [Nonempty.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/nonempty-star.md) | 53 | `result-track:927570ffd3d2f4c05e7f4f82f5615ac6897b1e859158356d5c5d8dd0da3b16a6` |
| 6 | `theorem` | [mem_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/mem-star.md) | 57 | `result-track:64a848719e4a63384417218530694be1ee0d7986a13c085dad437edf4577dd7f` |
| 7 | `theorem` | [star_mem_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-mem-star.md) | 59 | `result-track:ae2e7a92ef4e53794240fa3589f8fbb319fa5a8d09a4b3319e26424cc1ca7a95` |
| 8 | `theorem` | [star_preimage](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-preimage.md) | 62 | `result-track:0c195fff5ff526678763e9883074a947513790606523096562438ebfc4bed370` |
| 9 | `theorem` | [image_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/image-star.md) | 65 | `result-track:063a0b54ea5d80a1749c3d9a65b4b334648fdff8107902f3c1516fde9d465ff5` |
| 10 | `theorem` | [inter_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/inter-star.md) | 70 | `result-track:b197f00e8a59a6b35dbe6b714e5f0db8053c9c620d81fa3e2da99e7403627bcc` |
| 11 | `theorem` | [union_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/union-star.md) | 73 | `result-track:2ea57485fd9da847c586583414f96acae065f87fc2a43c9165d736f949576efe` |
| 12 | `theorem` | [iInter_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/iinter-star.md) | 76 | `result-track:58348cfed3838dc245b75a19f71a76b35fa8b169f82060d1aef45bf52d809afe` |
| 13 | `theorem` | [iUnion_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/iunion-star.md) | 80 | `result-track:e5431d8492ba2ce9d70f6c9838ac1a9899c90d5d596a342845b92de98093431e` |
| 14 | `theorem` | [compl_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/compl-star.md) | 84 | `result-track:255885cbe306428fb76666619adfb576150d1dbc3db46c833e964c42ceb251a6` |
| 15 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/instance.md) | 87 | `declaration-track:4e398b80727453373d8f5044435b29c6079dccc3dc871c2f1cb64f4685fb1b0f` |
| 16 | `theorem` | [star_subset_star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-subset-star.md) | 91 | `result-track:3d3472dd4eac787763800b7864d23631b2ad545791e47f7864991e8d40d8ae11` |
| 17 | `theorem` | [star_subset](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-subset.md) | 94 | `result-track:9e749c6517da98e976f6bcf677dacd33f8720869c4edd7a92ee75ccd2060c361` |
| 18 | `theorem` | [Finite.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/finite-star.md) | 97 | `result-track:08d9fe65124d22234e2839aaec8807715c63f0d2d4092c34b68cb1378ca6db8b` |
| 19 | `theorem` | [star_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-singleton.md) | 100 | `result-track:5a2d1e3ae06ceccd74cd94fbc4daebbbe1320965dc26322b29d7838c450dd606` |
| 20 | `theorem` | [star_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-mul.md) | 104 | `result-track:9c6365626babf2ce7c61625fd6fcc51baaf9a36ace6877030b878ad427a0ec1b` |
| 21 | `theorem` | [star_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-add.md) | 108 | `result-track:b6e438f41971683ec7598f96c3e3132c6a424262ba7da366e45b64d4b5a0cc65` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:73b92b95247da9c22d624a6236340eca0753e6324844e89a9a6c78ebe37740da` |
| 23 | `theorem` | [star_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-inv.md) | 119 | `result-track:42124a506e1c5f3de3df81f4fad0907767230651f637ebf7bdd318a127d6c57a` |
| 24 | `theorem` | [star_inv'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/star-inv-source-edition-2.md) | 123 | `result-track:c77629b001ba8e46db210ffed0ce36fee6c552fd4ea923f4d6e949062c0882a9` |
| 25 | `lemma` | [StarMemClass.star_coe_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/starmemclass-star-coe-eq.md) | 130 | `result-track:ce5f1ca50cf5ea0edeeb567b9267fa39abab660a1e2fad953c0b87b494b67937` |
| 26 | `lemma` | [commute_star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/StarPointwisePublic.lean/declarations/commute-star-iff.md) | 138 | `result-track:472976030b702477e2431823cce3032eb74d36abf51073af6d356661e22c4fc2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60cd28b39c8afd247588ef32f627817054dfed1feb81d8aa10dcf99face810ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Pointwise/Variantd8bcfc6a9e5f581d2ba216481bc54ee15f88478fc8856fefeb014d32d16a2e7b.lean","GRWTSK/_verification/specifications/Algebra/Pointwise/Variantd8bcfc6a9e5f581d2ba216481bc54ee15f88478fc8856fefeb014d32d16a2e7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
