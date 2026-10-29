# Verification target: Count Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d53aa8e6d4c63a5aa8c839a0f0f936d2d97b6e59",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant270056f075f8b8b46aef3bb8b00ea3e324779000bc985fa56ef628ad25e547d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d53aa8e6d4c63a5aa8c839a0f0f936d2d97b6e59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant270056f075f8b8b46aef3bb8b00ea3e324779000bc985fa56ef628ad25e547d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant270056f075f8b8b46aef3bb8b00ea3e324779000bc985fa56ef628ad25e547d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-empty.md) | 33 | `result-track:6d161e56681e3a8cc69a18a4d39e99a75c6e046da0918dca3af8dde2508438c9` |
| 2 | `theorem` | [countP_push_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-push-of-pos.md) | 35 | `result-track:8143af7a535cb2114bb6d59ecc0c0d0b3a26ab09d0f15d528f0158afc1e93a8b` |
| 3 | `theorem` | [countP_push_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-push-of-neg.md) | 39 | `result-track:e86f40278c5d526ab1ec31c6ab97578b657254ddc49ad4cc930d9581fa5c632a` |
| 4 | `theorem` | [countP_push](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-push.md) | 43 | `result-track:f62df92ca7faa21de6ee1708d68ee7b155b845e00edfaa683571df8db313b393` |
| 5 | `theorem` | [countP_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-singleton.md) | 48 | `result-track:27761b61cff4b8ecf4c38ea5b6132163a92d5a10b39483a4b52589e45eabdf6d` |
| 6 | `theorem` | [size_eq_countP_add_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/size-eq-countp-add-countp.md) | 51 | `result-track:762844ec7f50d93b3d3367cc92bbfd866e722fe80876721e1648cc2faa3b0bb2` |
| 7 | `theorem` | [countP_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-le-size.md) | 55 | `result-track:db1a8dfd73dc56aa5e44bbabcb39d2765ab60a3c2ac0670e0110c8dbbc7c06da` |
| 8 | `theorem` | [countP_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-append.md) | 61 | `result-track:76547785e0e98ce2dc7d0eac3181e5f20ae5c55abae9bd091cec0726e46045c6` |
| 9 | `theorem` | [countP_pos_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-pos-iff.md) | 66 | `result-track:44b09edc368d328b3ac68fd4bd384ddd991b535bd0fb9b231da54a4f3059b073` |
| 10 | `theorem` | [one_le_countP_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/one-le-countp-iff.md) | 70 | `result-track:91af44eb96081487ff7953f1ed2adc1acdeedc588ee4237c829e040403e766b5` |
| 11 | `theorem` | [countP_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-eq-zero.md) | 73 | `result-track:b74ed46549d7a350e28a522073917bd55cfb012711f8678422284079c719dcb1` |
| 12 | `theorem` | [_root_.Std.Internal.Vector.countP_eq_zero_of_forall](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/root-std-internal-vector-countp-eq-zero-of-forall.md) | 79 | `result-track:8ff7431f03073eeff60c7a0c9be96170b99077bed5cb482532495477b20ff343` |
| 13 | `theorem` | [_root_.Std.Internal.Vector.not_of_countP_eq_zero_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/root-std-internal-vector-not-of-countp-eq-zero-of-mem.md) | 83 | `result-track:98f1c401c1277d1513bd193135944ae672ac8794fa3bb536d8a526045277f61b` |
| 14 | `theorem` | [countP_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-eq-size.md) | 89 | `result-track:6b20868b626aa3bac6dc8718fb18a302ed7ff063f32e42fdfc63d5cc992e3572` |
| 15 | `theorem` | [countP_cast](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-cast.md) | 93 | `result-track:53f0c0ebbf3c3ead2141395369fe4e4db2d335436983e5839bc08d8f2c61e845` |
| 16 | `theorem` | [countP_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-replicate.md) | 97 | `result-track:fcf985e717a0cd3fd9aa6bc9f6f6d5665e84867a52f3414b6ec18b7b12be6172` |
| 17 | `theorem` | [boole_getElem_le_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/boole-getelem-le-countp.md) | 102 | `result-track:65a3615130db78c8beaab1505f506a12e1751089db809e3e8bd2bb93d198050f` |
| 18 | `theorem` | [countP_set](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-set.md) | 109 | `result-track:0543b3549285263e452552bb53d2ef16fc39b26eff50120d9d36548c59462f7f` |
| 19 | `theorem` | [countP_true](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-true.md) | 114 | `result-track:0c981c169b85d1c697077d4c6108fdf6adb38110020f4913f6ea54d9912f4290` |
| 20 | `theorem` | [countP_false](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-false.md) | 119 | `result-track:9204a878b83bdcd6ae59b8c0013d4b89bd229b276e25a553cc2cdf85a7dd4e81` |
| 21 | `theorem` | [countP_map](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-map.md) | 123 | `result-track:78e8d919a79faa7398b593e5ef8991ad2f142b9eeeca1eb752cc3d57e6383e89` |
| 22 | `theorem` | [countP_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-flatten.md) | 128 | `result-track:155bb83bbc8fba783f8ee9367fbba71570656fd0309509eb4fd18865f822d121` |
| 23 | `theorem` | [countP_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-flatmap.md) | 133 | `result-track:439b2265f65cd754c97c21b2f52af526a167fa321d41f05e7ffe4b6cbd1f4d3e` |
| 24 | `theorem` | [countP_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-reverse.md) | 138 | `result-track:da9f129e76d816a61938f2d82a1f22e99e5856420825b73cc11940cde4a92c38` |
| 25 | `theorem` | [countP_mono_left](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-mono-left.md) | 142 | `result-track:3379f5081a23aea6d3545ed39fbde8cff29ce6f80addab281265ffdafca411b4` |
| 26 | `theorem` | [countP_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-congr.md) | 146 | `result-track:8b411232572b92c535a399bcd5eef1e782a027e7d9a56355463bc73e173f1f11` |
| 27 | `theorem` | [count_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-empty.md) | 158 | `result-track:257b96dc763868f9bbef446ee918baa616e1721563348e3643644a65e1e7be22` |
| 28 | `theorem` | [count_push](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-push.md) | 160 | `result-track:66c312654fe1f122b4c1b2e87a426422e080b91ab66e428a401ec9237367ee54` |
| 29 | `theorem` | [count_eq_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-eq-countp.md) | 165 | `result-track:2f000880906b3b5c09c4ffad3116f99b1c512d5bb3f725a7973d2688e123d1a9` |
| 30 | `theorem` | [count_eq_countP'](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-eq-countp-source-edition-2.md) | 167 | `result-track:b66638cb5d54d1f6b43440375b2df6ebef86a9f65ded96a7700d41723737b0f5` |
| 31 | `theorem` | [count_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-le-size.md) | 171 | `result-track:353d71d63597dcbf6da02edc370ce5e37e28f6fd0e1951966acb1ab038cde29a` |
| 32 | `theorem` | [count_le_count_push](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-le-count-push.md) | 175 | `result-track:113172fc4b14b2af20be5e48343bfa528eca0cbe13e1237155a5bd8221498646` |
| 33 | `theorem` | [count_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-singleton.md) | 179 | `result-track:ec1d9c7bfffdb1e8720fcfefa0c2379817c88483dcb2879a5bc719c0e5061cbd` |
| 34 | `theorem` | [count_append](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-append.md) | 182 | `result-track:26c2bd1c8653246de5d87ba8470777337f75111f9e1283d8b89873fe219a8c4d` |
| 35 | `theorem` | [count_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-flatten.md) | 186 | `result-track:ee20e506967876ec0faf02e87d330d031452cc81eb6792609ee9364b05f2ed82` |
| 36 | `theorem` | [count_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-reverse.md) | 191 | `result-track:5539ad8e25d7a6632fda35e5302e055f034e821386fd19653f350182d9df0f39` |
| 37 | `theorem` | [boole_getElem_le_count](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/boole-getelem-le-count.md) | 196 | `result-track:ade4f54a630ecf81983edb780a2b764d497c071d68d890390af7aebe342e5106` |
| 38 | `theorem` | [count_set](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-set.md) | 201 | `result-track:8b51bcc11f57809a52dd61d84140a50799206231f0968e4e9a8c9201ee91475a` |
| 39 | `theorem` | [count_cast](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-cast.md) | 206 | `result-track:48a7d228a32f22961cfe1e8ab53e30ee2f7dacd7afd399dedbc7cdd2f95c108e` |
| 40 | `theorem` | [count_push_self](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-push-self.md) | 212 | `result-track:1cf4d1330349375479423579e6ac87c32f07db4841d957b53733bd5bfd25ea0f` |
| 41 | `theorem` | [count_push_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-push-of-ne.md) | 216 | `result-track:a828b8c4ffcf250b38d2e11087a853aa1cf9f6e3b4ebb7f448a9b82256a192d5` |
| 42 | `theorem` | [count_singleton_self](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-singleton-self.md) | 220 | `result-track:accff033282bb302d5b1d861d8467ef80a2f76c58b1b28372266460d1c4d8737` |
| 43 | `theorem` | [count_pos_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-pos-iff.md) | 223 | `result-track:2e137b6dffd8023d03403de26cb5de72b056971a5a973bab37b528c313575e1a` |
| 44 | `theorem` | [one_le_count_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/one-le-count-iff.md) | 227 | `result-track:4b860063b7f4a240ce439f8da534b4e51ed8c116afb848a9221f40ebac6fd35e` |
| 45 | `theorem` | [count_eq_zero_of_not_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-eq-zero-of-not-mem.md) | 230 | `result-track:6963c8ff6594bf625604bd1cb2e7a1fe81b70a2d34dbf1b3918c7eadd78e411c` |
| 46 | `theorem` | [not_mem_of_count_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/not-mem-of-count-eq-zero.md) | 233 | `result-track:4b2236ce3999fccde2bbd1bc8da23f312aa06c6aa56ceffe97586005638c1214` |
| 47 | `theorem` | [count_eq_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-eq-zero.md) | 236 | `result-track:6c1fb6da531de495bddcd8a3d0acb4f94505f8b3a93839813fbc49c68a4111ab` |
| 48 | `theorem` | [count_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-eq-size.md) | 241 | `result-track:46bf68b342af9ad18df008d8609a188b4b3bdabd5122418d90f5c3777fe02da5` |
| 49 | `theorem` | [count_replicate_self](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-replicate-self.md) | 245 | `result-track:d74b20ef247634ae660de67f4bae074adbd46b024641960e0de022db9fadf41f` |
| 50 | `theorem` | [count_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-replicate.md) | 249 | `result-track:adcca4b4557df10da2c7b61cc3c70d085d4b98be3c4597a4a9e0e688de3b9308` |
| 51 | `theorem` | [count_le_count_map](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-le-count-map.md) | 253 | `result-track:4502283fcf33ea043e9fe00522ff653be615c22e15b9b93c92731bb769aaf69b` |
| 52 | `theorem` | [count_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-flatmap.md) | 258 | `result-track:2bf641a5cabf7e3c0181ecfb638d51f3a740736c1f85246617a93345a26de214` |
| 53 | `theorem` | [countP_replace](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/countp-replace.md) | 263 | `result-track:ef09a44ee409f5c1e5db90a105787558aa3de4f55976c213a2a742acb357ca26` |
| 54 | `theorem` | [count_replace](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublic.lean/declarations/count-replace.md) | 269 | `result-track:c8b953b77d2962878e02f74af59a484a78dca91936c7c7a4a24ee45b3bf47499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e12921c79634a221a5b8699cf4d04d963a9d19a145ba7180d46ac8e6b15d294b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant270056f075f8b8b46aef3bb8b00ea3e324779000bc985fa56ef628ad25e547d4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant270056f075f8b8b46aef3bb8b00ea3e324779000bc985fa56ef628ad25e547d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
