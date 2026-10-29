# Verification target: Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d909aa0b84ea49ccd1fa528130805e79fbb920de",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Equiv.lean/index.md) · [Full source](../../../../GeneralTopology/Equiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d909aa0b84ea49ccd1fa528130805e79fbb920de`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HomotopyEquiv](../../../../GeneralTopology/Equiv.lean/declarations/homotopyequiv.md) | 39 | `declaration-track:28d613ee30db51b4fbc5c6a8e0f495da7d027bf77a246bf0738102ed1c5b6928` |
| 2 | `def` | [toFun'](../../../../GeneralTopology/Equiv.lean/declarations/tofun.md) | 53 | `declaration-track:dbfb6f614f66e5b3482c881d2aaecd26ade28e605ff8308a05ff5715498ffd39` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/Equiv.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:9af337bd39cc6828b0b5cbb97c7eb412328577ffe3f9f877fb95996ea64157b2` |
| 4 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/Equiv.lean/declarations/tofun-eq-coe.md) | 58 | `result-track:f89bd15111a946afb13ebcd416468b0b98d55f70418703cb0bd35c487d6aac6a` |
| 5 | `theorem` | [continuous](../../../../GeneralTopology/Equiv.lean/declarations/continuous.md) | 62 | `result-track:b816e6858a89bc7476fd2a07fbb6e264dce6203b8c1007bc52915fcb4f16e1bd` |
| 6 | `def` | [toHomotopyEquiv](../../../../GeneralTopology/Equiv.lean/declarations/tohomotopyequiv.md) | 75 | `declaration-track:ddf3d73314b1ed50aaff0d4844db4a9d7acce6e29bb77e63ee54d80912d448b4` |
| 7 | `theorem` | [coe_toHomotopyEquiv](../../../../GeneralTopology/Equiv.lean/declarations/coe-tohomotopyequiv.md) | 82 | `result-track:caefb17ea490cdbd02eeee5ec662af1fc65ef76d3fead7a1a374711a6fffb1e0` |
| 8 | `def` | [symm](../../../../GeneralTopology/Equiv.lean/declarations/symm.md) | 93 | `declaration-track:c98b2ac3307e67cf7b88d26363d85b20756fe9a74fafe5906e7671298fabc421` |
| 9 | `theorem` | [coe_invFun](../../../../GeneralTopology/Equiv.lean/declarations/coe-invfun.md) | 100 | `result-track:868ec89933b2db3b6ab08e22679a2e28f7f10b90c6eedb3a7013a25b0977fa95` |
| 10 | `def` | [Simps.apply](../../../../GeneralTopology/Equiv.lean/declarations/simps-apply.md) | 105 | `declaration-track:7129a3af7c6e6675a39935f93056ada88106a0e878d1f6cb4cb3bcde23efbfc4` |
| 11 | `def` | [Simps.symm_apply](../../../../GeneralTopology/Equiv.lean/declarations/simps-symm-apply.md) | 110 | `declaration-track:b675f52114899fe28df3a907fe148e523bbc3c01831832a1f6c764ef281f3998` |
| 12 | `def` | [refl](../../../../GeneralTopology/Equiv.lean/declarations/refl.md) | 119 | `declaration-track:dc776acbc13d984f75b17114253a5cda15351bc8437b333230904ef0180b1a26` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/Equiv.lean/declarations/instance.md) | 122 | `declaration-track:1151421ca20061a694b230bae1e5c9ca8746f16f4b532c93adf0dc2124224202` |
| 14 | `def` | [trans](../../../../GeneralTopology/Equiv.lean/declarations/trans.md) | 130 | `declaration-track:b6fa38f3a321a73e9451f1a2319581880da3c41e7d97061cf0a22405734450df` |
| 15 | `theorem` | [symm_trans](../../../../GeneralTopology/Equiv.lean/declarations/symm-trans.md) | 140 | `result-track:14a622e1ce6514ad4997d06ac6f48d2cf07c9b68742f8b85f7608a7365a9a102` |
| 16 | `def` | [prodCongr](../../../../GeneralTopology/Equiv.lean/declarations/prodcongr.md) | 144 | `declaration-track:c4c043a056ec9b9b053c62dfc22e652480cd72fa67f847984aefeeb4b373c144` |
| 17 | `def` | [piCongrRight](../../../../GeneralTopology/Equiv.lean/declarations/picongrright.md) | 152 | `declaration-track:4a833287ec442b16264c86c9f169a7e0b37190210bb49b1000f071331732fb32` |
| 18 | `theorem` | [refl_toHomotopyEquiv](../../../../GeneralTopology/Equiv.lean/declarations/refl-tohomotopyequiv.md) | 169 | `result-track:300a12f4d03085cfac594bab7d4773d0d455d4ac6dd14ca30a24f3f63f9c358c` |
| 19 | `theorem` | [symm_toHomotopyEquiv](../../../../GeneralTopology/Equiv.lean/declarations/symm-tohomotopyequiv.md) | 174 | `result-track:d947d81b7d36c5019fba7d22853b162269c2255a09b5626392cdff7f16b36958` |
| 20 | `theorem` | [trans_toHomotopyEquiv](../../../../GeneralTopology/Equiv.lean/declarations/trans-tohomotopyequiv.md) | 178 | `result-track:97bc1a073114d868fd3a0b5387b0f8beddd23edd44f7bf8531b5b08d3466e9d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cd7411c1f47fb4c2537f815c7c4a205a3dbbc8854091d22f1c8708c0ad04458 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/Equiv/Variantee08fc45be8fb03a3791478740b6b19a82ca24028b8ecb4acf16b9d32b704042.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
