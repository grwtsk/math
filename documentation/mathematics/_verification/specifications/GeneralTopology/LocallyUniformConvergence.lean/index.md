# Verification target: Locally Uniform Convergence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "084041ee3b5f5e565688f6e5195a998c10f0a379",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocallyUniformConvergence.lean/index.md) · [Full source](../../../../GeneralTopology/LocallyUniformConvergence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `084041ee3b5f5e565688f6e5195a998c10f0a379`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon.md) | 46 | `declaration-track:a70885ef3f0f49cddc0ca63a4da52377c5210e4bff8470efa15b515dd38e9dd8` |
| 2 | `def` | [TendstoLocallyUniformly](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly.md) | 52 | `declaration-track:dc5147a9c49d8a35bc12020e7545b22a22a7a953d6264d0a9b96de728312e85e` |
| 3 | `theorem` | [tendstoLocallyUniformlyOn_univ](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-univ.md) | 55 | `result-track:fa55e11882fe3171426efa9eccdbad0df07e8769f42f9757a1d62b78f9cf6945` |
| 4 | `theorem` | [tendstoLocallyUniformlyOn_iff_forall_tendsto](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-iff-forall-tendsto.md) | 59 | `result-track:df968c594ccd81c8397b8b510d6ccbf4ff84fe37066df6aef6bc3d6b65a2a346` |
| 5 | `theorem` | [IsOpen.tendstoLocallyUniformlyOn_iff_forall_tendsto](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/isopen-tendstolocallyuniformlyon-iff-forall-tendsto.md) | 65 | `result-track:9bb324842e9ebffa3d7fbb59803b6e56baea7b73f7b50d545d39bdb78a9f9712` |
| 6 | `theorem` | [tendstoLocallyUniformly_iff_forall_tendsto](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly-iff-forall-tendsto.md) | 71 | `result-track:22679f4bd3b4d2b36f73d2b7b4cad817c95a0a16affa215d1e6e630762463729` |
| 7 | `theorem` | [tendstoLocallyUniformlyOn_iff_tendstoLocallyUniformly_comp_coe](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-iff-tendstolocallyuniformly-comp-coe.md) | 76 | `result-track:0fabacd7847c6f88c24d0058ae7d98a08ad377824a713c6fbbde4694f7caca4a` |
| 8 | `theorem` | [TendstoUniformlyOn.tendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstouniformlyon-tendstolocallyuniformlyon.md) | 82 | `result-track:aa522301a70b1edd42543f40518f4cfe077bd1d07620df6f40fb01dfab1297ab` |
| 9 | `theorem` | [TendstoUniformly.tendstoLocallyUniformly](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstouniformly-tendstolocallyuniformly.md) | 86 | `result-track:588eb2f54e69c384f01b89084f2f1c8e088df08c16a600252e6bcf0bccd7dc2f` |
| 10 | `theorem` | [TendstoLocallyUniformlyOn.mono](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-mono.md) | 89 | `result-track:d7361830e5e5fd59ffb4f7f1cb594134292e71cbcc5c74e639c6fb4d1d38d0a3` |
| 11 | `theorem` | [tendstoLocallyUniformlyOn_iUnion](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-iunion.md) | 95 | `result-track:2bf4ca7142a5fd848e16b458dc7bcafd89ddb7cb961363f95028c0a2993fc949` |
| 12 | `theorem` | [tendstoLocallyUniformlyOn_biUnion](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-biunion.md) | 102 | `result-track:f3c4fb5e46f7ab355bc83fe2d8859d5bc3d200a918fd57c472c9d849bfdca1ea` |
| 13 | `theorem` | [tendstoLocallyUniformlyOn_sUnion](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-sunion.md) | 108 | `result-track:b85faf7c2f40bbd4dfbe5b57b8100193c50bc0f96fb183989c769436c8675403` |
| 14 | `theorem` | [TendstoLocallyUniformlyOn.union](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-union.md) | 113 | `result-track:bd04083e728fffc793175d5667f9e7f6b045fc92df83669ac318cfbd4d73b4f0` |
| 15 | `theorem` | [TendstoLocallyUniformly.tendstoLocallyUniformlyOn](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly-tendstolocallyuniformlyon.md) | 119 | `result-track:0ef4582e8f4c2c1882f09349cedeea700a210c64c6e936bd9226c7e2fd2f4b76` |
| 16 | `theorem` | [tendstoLocallyUniformly_iff_tendstoUniformly_of_compactSpace](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly-iff-tendstouniformly-of-compactspace.md) | 124 | `result-track:791dd03302cffe91067dd036c2ea4e2ef0058c5a4e27cdbdd1617ad2159fdf01` |
| 17 | `theorem` | [tendstoLocallyUniformlyOn_iff_tendstoUniformlyOn_of_compact](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-iff-tendstouniformlyon-of-compact.md) | 138 | `result-track:4081709f02bf0831aeafca970753ab4996a0e94c86e12df1b7925a96683f7e04` |
| 18 | `theorem` | [TendstoLocallyUniformlyOn.comp](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-comp.md) | 146 | `result-track:f6c9b021880e62f5553cf0ee657a7259a60ff2d86f48f514b79b0325c37eee9f` |
| 19 | `theorem` | [TendstoLocallyUniformly.comp](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly-comp.md) | 155 | `result-track:9190c2b372bcac485c98cf79ee68ca74592da11892af38e19c82dda36e71aece` |
| 20 | `lemma` | [tendstoLocallyUniformlyOn_of_forall_exists_nhds](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-of-forall-exists-nhds.md) | 167 | `result-track:401179476a7cadf64c0cdf8658c859ba63bbce3cb59efa6b3f02a6cd8f39bdad` |
| 21 | `lemma` | [tendstoLocallyUniformly_of_forall_exists_nhds](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly-of-forall-exists-nhds.md) | 181 | `result-track:50e6b6c81bab7bddbbdd3125d054636a701f2736c5a43b5688c0ae5ebe330a6e` |
| 22 | `theorem` | [tendstoLocallyUniformlyOn_TFAE](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-tfae.md) | 190 | `result-track:ac357476defda84d13e55d051cd44208ff93f58d4b92ef5f42c3a8096be99442` |
| 23 | `theorem` | [tendstoLocallyUniformlyOn_iff_forall_isCompact](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-iff-forall-iscompact.md) | 209 | `result-track:ce607c335a542f40a08db4af17a71bc4d7c8f6891705e13f9778c7be240a3280` |
| 24 | `lemma` | [tendstoLocallyUniformly_iff_forall_isCompact](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly-iff-forall-iscompact.md) | 213 | `result-track:e689f098c04a9078bd040cf5a3cac53da594cd17d77d1a773220fb874a094f7b` |
| 25 | `theorem` | [tendstoLocallyUniformlyOn_iff_filter](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-iff-filter.md) | 218 | `result-track:00e39ba9b91ff19a434aed77070e5335bb883cf2ddd2e752d2b5a08806d3daa4` |
| 26 | `theorem` | [tendstoLocallyUniformly_iff_filter](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformly-iff-filter.md) | 229 | `result-track:e9ce75974960f4aca3b1b1d48b90a16b84742e1b3fbd4b66f0782a2f6191a23f` |
| 27 | `theorem` | [TendstoLocallyUniformlyOn.tendsto_at](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-tendsto-at.md) | 234 | `result-track:494d82693493095aa665bf7b7aadaa8f25b666fe0123871c455b68d479c0e926` |
| 28 | `theorem` | [TendstoLocallyUniformlyOn.unique](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-unique.md) | 239 | `result-track:93a8010f5f9337e39761ccb185e63b744b838eaef5164556a6715c32ea671494` |
| 29 | `theorem` | [TendstoLocallyUniformlyOn.congr](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-congr.md) | 243 | `result-track:a90472576615a24e5375e47375bf13f8c3af43e096fe8984b55be7d6ec5c5c1f` |
| 30 | `theorem` | [TendstoLocallyUniformlyOn.congr_right](../../../../GeneralTopology/LocallyUniformConvergence.lean/declarations/tendstolocallyuniformlyon-congr-right.md) | 250 | `result-track:3d59a8c38c28dbd61c50967c95efa1598fbedaba02b20f8a6437cbba7ba8f625` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db5d4a2cf13a04219ed2729780235b654ff0e0141e4e9d13e901f207d83bbaa8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyUniformConvergence/Variant85d8051e48b46ff21d19ece97ef97ec41b4803e511dcf677724998327eff90f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
