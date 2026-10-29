# Verification target: Pi Topology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcde89c7724d56615e1558fa63832a25fe63c49d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PiTopologyPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PiTopologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcde89c7724d56615e1558fa63832a25fe63c49d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instance.md) | 79 | `declaration-track:b991e47fcc1262a830bd78b61a02b74719aa55d176377fc4cbd5c501eb392e3d` |
| 2 | `theorem` | [instT0Space](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instt0space.md) | 84 | `result-track:040153674c99dac6d884790482663cd1703d2097570893e782806e5a805dc6c6` |
| 3 | `theorem` | [instT2Space](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instt2space.md) | 89 | `result-track:b564e396dcb8d1586b98123b0c6e02c4437463ae378779039636475691a8d729` |
| 4 | `theorem` | [continuous_coeff](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/continuous-coeff.md) | 93 | `result-track:c2af6b5675f903a2064925c83c802b662b74f57f97f546db999a024d39de9799` |
| 5 | `theorem` | [continuous_constantCoeff](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/continuous-constantcoeff.md) | 97 | `result-track:5176dd110677fb3205d3360e9547aa0135d3bb3f7927805a5ab8286dd8e261df` |
| 6 | `theorem` | [tendsto_iff_coeff_tendsto](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/tendsto-iff-coeff-tendsto.md) | 101 | `result-track:4a13da4b83282b079df2bc7003a06621cad7845d8a0871429f9be24ffb8c2984` |
| 7 | `theorem` | [tendsto_trunc_atTop](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/tendsto-trunc-attop.md) | 114 | `result-track:e0415d24c2b8231e8a0aca3d84607de6193b82ca81f69705922d2f33067b584c` |
| 8 | `theorem` | [denseRange_toPowerSeries](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/denserange-topowerseries.md) | 121 | `result-track:5c2d66fb7e344a854586c611fb13cc922f2bea60bef1b80e0cc33079ae197881` |
| 9 | `theorem` | [instIsTopologicalSemiring](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instistopologicalsemiring.md) | 127 | `result-track:a9311394e931c4220fb92ef98b461bdb7f770a2eaebbec33356f797567e39726` |
| 10 | `theorem` | [instIsTopologicalRing](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instistopologicalring.md) | 133 | `result-track:d55c2d48e6b3ad4610edd698ec7fe21b0651f0c9e3e4ad4b22feb76b20a8f236` |
| 11 | `theorem` | [hasSum_iff_hasSum_coeff](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/hassum-iff-hassum-coeff.md) | 140 | `result-track:2ac429bc6a75595a8cee2f98367cddc401d4344ba5dfc78b033d2e63f0e03c48` |
| 12 | `theorem` | [summable_iff_summable_coeff](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/summable-iff-summable-coeff.md) | 145 | `result-track:1cddb8a2174e722edbdf1e2435f58d644ea3d82956c9c21a18d0024b8ebdc8fa` |
| 13 | `theorem` | [summable_of_tendsto_order_atTop_nhds_top](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/summable-of-tendsto-order-attop-nhds-top.md) | 156 | `result-track:8295366996cbeab36680e374026495d7923897345795134a8c2fc12e79368183` |
| 14 | `theorem` | [summable_pow_of_constantCoeff_eq_zero](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/summable-pow-of-constantcoeff-eq-zero.md) | 172 | `result-track:59666f29312966e53f5b05a9768da976a377c51a26913aaa127c2015593bb90f` |
| 15 | `theorem` | [tsum_pow_mul_one_sub_of_constantCoeff_eq_zero](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/tsum-pow-mul-one-sub-of-constantcoeff-eq-zero.md) | 181 | `result-track:d26d581ddef4f3a695f3873242fb06953d5edd07a77968aa1ee640ac33c79c6d` |
| 16 | `theorem` | [one_sub_mul_tsum_pow_of_constantCoeff_eq_zero](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/one-sub-mul-tsum-pow-of-constantcoeff-eq-zero.md) | 186 | `result-track:0bd7de18d4de11ddef901a135b9be7ef5d060895811b3234b87d2ca86071884e` |
| 17 | `theorem` | [summable_prod_of_tendsto_order_atTop_nhds_top](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/summable-prod-of-tendsto-order-attop-nhds-top.md) | 199 | `result-track:e49492214a3e1e82b789b3af626dbf50fa732339206b77cceaa3603ecbd8f905` |
| 18 | `theorem` | [multipliable_one_add_of_tendsto_order_atTop_nhds_top](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/multipliable-one-add-of-tendsto-order-attop-nhds-top.md) | 217 | `result-track:043979dcb59a46183190b73522746d35ce393f4a7cc06ee22085434595f36567` |
| 19 | `theorem` | [multipliable_one_sub_X_pow](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/multipliable-one-sub-x-pow.md) | 226 | `result-track:a94ef748559e950e656a3abda8712fba9049e892e99bc6693da9abb0200646ec` |
| 20 | `theorem` | [tprod_one_sub_X_pow_ne_zero](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/tprod-one-sub-x-pow-ne-zero.md) | 236 | `result-track:b28fc38d663c87c1759a10b4982f5b4bb082e87c2431041a15645724746fae3e` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instance-source-edition-2.md) | 256 | `declaration-track:f6a215c42dbdc79b1e2f935572a297ab085f9f0071666dadb5b7f8d7a9a037aa` |
| 22 | `theorem` | [uniformContinuous_coeff](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/uniformcontinuous-coeff.md) | 260 | `result-track:9559a276f6055bc6ae1659888ffa9683fd89b25faad93ce24e056f641776e999` |
| 23 | `theorem` | [instCompleteSpace](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instcompletespace.md) | 266 | `result-track:16df051f9c2f3ba9eb9a1bd72d00dd40b5cffc74d0e91dd3d3443c1e2266a19b` |
| 24 | `theorem` | [instIsUniformAddGroup](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/instisuniformaddgroup.md) | 272 | `result-track:464fb63fa124c34abe0c9203a055bec5b9d14e06126ca54f6503eb1eb415423a` |
| 25 | `theorem` | [continuous_C](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/continuous-c.md) | 290 | `result-track:2fd3e9a24ce99332bbfa2db62bcb82f496c6c48f7ef8f38e29ba7149c5ef0f40` |
| 26 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_isNilpotent](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/istopologicallynilpotent-of-constantcoeff-isnilpotent.md) | 293 | `result-track:7897fb4816cdafe1f7cf4ec64e48c0ba772fa208ad6ff35dd7c9a9b5c49c692c` |
| 27 | `theorem` | [isTopologicallyNilpotent_of_constantCoeff_zero](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/istopologicallynilpotent-of-constantcoeff-zero.md) | 298 | `result-track:a3684df3f6082b374fa6c6ca2c1a19d6e21a7525a82ffb88f40c9ac097cabc09` |
| 28 | `theorem` | [isTopologicallyNilpotent_iff_constantCoeff_isNilpotent](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/istopologicallynilpotent-iff-constantcoeff-isnilpotent.md) | 306 | `result-track:6373f854bb20e667f5b10e09f90dd29569091a43b46902fc5b6a35a952f1445e` |
| 29 | `theorem` | [hasSum_of_monomials_self](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/hassum-of-monomials-self.md) | 326 | `result-track:e37dd7f92383b6c47045186ead07d5dfd262dfcef4b016d3b17b79e3ff060d4d` |
| 30 | `theorem` | [as_tsum](../../../../CommutativeAlgebra/PiTopologyPublic.lean/declarations/as-tsum.md) | 335 | `result-track:44c4208d4c3e4fd3956bbd5d4f24daadc99fe58de99ea2b4543f314e3a34a96b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afbdaa07bb4859de5f4f95553f3e3531a1cd04d4ce16201ca0c89803b2bf2873 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/PiTopology/Variant62861c69c329dd259886112a337779d2a7826e2182b617d9b13c7a3716e359dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
