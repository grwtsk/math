# Verification target: Differential Form Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d5ebd7f10cb4bf8871581aac2c87f3380af9a58",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DifferentialFormBasicPublic.lean/index.md) · [Full source](../../../../RealFunctions/DifferentialFormBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d5ebd7f10cb4bf8871581aac2c87f3380af9a58`.

Source path: `GRWTSK/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean.json)

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
| 1 | `def` | [extDeriv](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv.md) | 73 | `declaration-track:7c0606b25b893c387e8b257d4d8e1900c1bc7bc161e2ee6bb128a005a0afa42b` |
| 2 | `def` | [extDerivWithin](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin.md) | 88 | `declaration-track:01c066b9adcc4938f5a82121516ff0e5d9ba2a3da67240753014ef3582675fd5` |
| 3 | `theorem` | [extDerivWithin_univ](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-univ.md) | 93 | `result-track:b68d93c4e2ffc7da29cd21a4382e3da418f627768864ce29c8407bd0328a8044` |
| 4 | `theorem` | [extDerivWithin_add](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-add.md) | 98 | `result-track:8f049026cec08d653600d765b528d4e3ca144b06f832e9b09003955686cda1d5` |
| 5 | `theorem` | [extDerivWithin_fun_add](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-fun-add.md) | 103 | `result-track:52d5e2c5fac1c11f2dfcc25e365e6bb856d63ed4d989aea497eba63a9cb5a7a4` |
| 6 | `theorem` | [extDeriv_add](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-add.md) | 108 | `result-track:c27ac05303ce58a60474d815b7f18bcf55f8da331fe49bc976a6b79a34e33045` |
| 7 | `theorem` | [extDeriv_fun_add](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-fun-add.md) | 112 | `result-track:a47725e02e1e7a207be8f9d4cb86b6f24fbaf0d32b3d6fcc90dc9d206c7daeb8` |
| 8 | `theorem` | [extDerivWithin_smul](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-smul.md) | 116 | `result-track:e914ff223e9a7b93ea66a9570fd577a4c7363d48c5801d808439e361778d2b4d` |
| 9 | `theorem` | [extDerivWithin_fun_smul](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-fun-smul.md) | 120 | `result-track:614ec2a18f93294dec4c2af48d60787d02ab16a5da0030162669518464a96710` |
| 10 | `theorem` | [extDeriv_smul](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-smul.md) | 125 | `result-track:d45f2e83e6d0379c474f3d60ed3150ad6182d2422d54931e27b192de72d4eefe` |
| 11 | `theorem` | [extDeriv_fun_smul](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-fun-smul.md) | 129 | `result-track:77e4a23cd8d51d1901f72864c630749311c5d0827003717c4f18dec333667ea6` |
| 12 | `theorem` | [extDerivWithin_constOfIsEmpty](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-constofisempty.md) | 135 | `result-track:4e5c5c7578c9144b9334a5bc0aa82c580a3541966074fb97274eb3afd9a9bb14` |
| 13 | `theorem` | [extDeriv_constOfIsEmpty](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-constofisempty.md) | 144 | `result-track:0c9b4d18279f3664a8ef63b5b152e5c57c72bca618cc27e85cbedf260206ec89` |
| 14 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderivwithin-eq.md) | 149 | `result-track:3dbe15d42b9978af4cf580d7fc6588b3f635b072ca32b03eff326699ce840045` |
| 15 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_of_mem](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderivwithin-eq-of-mem.md) | 153 | `result-track:54cc14b5b1ce387081024d9f9d08d46cb31d049d039f320285317d5841348b54` |
| 16 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_of_insert](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderivwithin-eq-of-insert.md) | 157 | `result-track:ab53b88444096fa9c31a695a500a69a6f0d4454a13b6b45a5a71ff4fd59e73be` |
| 17 | `theorem` | [Filter.EventuallyEq.extDerivWithin'](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderivwithin.md) | 162 | `result-track:38c6d8bed31777c6fd3afaef225e68e163a1e25e27601d18595de83cbb22d761` |
| 18 | `theorem` | [Filter.EventuallyEq.extDerivWithin](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderivwithin-source-edition-2.md) | 168 | `result-track:b2f232e2a4eeaf426e8beb2621e643ed4eee11c6e24390d5b5bb14c17ddeeef3` |
| 19 | `theorem` | [Filter.EventuallyEq.extDerivWithin_eq_nhds](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderivwithin-eq-nhds.md) | 172 | `result-track:cf6bcf9414cbd3bc4927761596bb51fef8a25a40864346f254d7151b5edea172` |
| 20 | `theorem` | [extDerivWithin_congr](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-congr.md) | 176 | `result-track:5ae51df380d149665d36f98517cdf9016128d3d568cbd1f1501155bc93eee5f7` |
| 21 | `theorem` | [extDerivWithin_congr'](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-congr-source-edition-2.md) | 180 | `result-track:b4eda69d72322b48a6a2f95ec8690731c34928071cfd5200924b73c947f2b1e9` |
| 22 | `theorem` | [Filter.EventuallyEq.extDeriv](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderiv.md) | 184 | `result-track:8fe55da48a73dfdccd0c1567b0e2c74637142d177d6623c7052e56997dc6dd94` |
| 23 | `theorem` | [Filter.EventuallyEq.extDeriv_eq](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/filter-eventuallyeq-extderiv-eq.md) | 189 | `result-track:7a84df2c100c8ccc41b6c94d84aceaeb80ab6798bf920d1d4d869540bcf539a8` |
| 24 | `theorem` | [extDerivWithin_apply](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-apply.md) | 192 | `result-track:716f85c49f2f8521b180c547f8c905369158e4eaabfdf6f85c8d0d28f14fb715` |
| 25 | `theorem` | [extDeriv_apply](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-apply.md) | 199 | `result-track:5cd0020e76896ad7dd190135701681df3d595986b9f775f95d0188f2a32e6e55` |
| 26 | `theorem` | [extDerivWithin_extDerivWithin_apply](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-extderivwithin-apply.md) | 204 | `result-track:824811e8c03f0827a66779ac9258cb78ef49ab7228e4804014dba680d98eb553` |
| 27 | `theorem` | [extDerivWithin_extDerivWithin_eqOn](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-extderivwithin-eqon.md) | 222 | `result-track:9c8d12dcf3ff5c3e6c6fe1a3e664164339a633222e97a00db207e93dabe36f65` |
| 28 | `theorem` | [extDeriv_extDeriv_apply](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-extderiv-apply.md) | 229 | `result-track:efeb1156dfd9f14a88cc3cc0880d89435e1519b894ae0f4eda234a32f75b2293` |
| 29 | `theorem` | [extDeriv_extDeriv](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-extderiv.md) | 235 | `result-track:3e8680d83943e001b49eca55d406b30b352724cd0d4a06440bc051a7e4d85185` |
| 30 | `theorem` | [extDerivWithin_pullback](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderivwithin-pullback.md) | 240 | `result-track:9ba62fea016cb8f7372e73ec78c8e6434b8fa3eb36d8c11abac7c7581d09a245` |
| 31 | `theorem` | [extDeriv_pullback](../../../../RealFunctions/DifferentialFormBasicPublic.lean/declarations/extderiv-pullback.md) | 260 | `result-track:3fbaf4faa88d9361900ea9df742b555171bff388734c581ca6bbf6b9609ada42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9fd2a298263bfacdad919eccdaccf88ad11ec62fb312fe98a2cec7db853f7a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean","GRWTSK/_verification/specifications/Analysis/Basic/Variantfaf5c0543d2c00a38af8e5764e9c0d722db5c24d5f61437f15299f255bc1fd2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
