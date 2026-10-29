# Verification target: Basic Basic Namespaced Public For In Step

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0086ae6fc157d38e8c76d36224bbd352c692cdc5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0086ae6fc157d38e8c76d36224bbd352c692cdc5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/instance-source-edition-3.md) | 33 | `declaration-track:840b09dd8e7e14b2db42bd9052272640098d0483e8c3e2b778e49b224b4066f5` |
| 2 | `theorem` | [forIn'_eq_forIn](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/forin-eq-forin-source-edition-2.md) | 36 | `result-track:cc8d55f2f21af8c9601b5d7af83150add77d514fe15acaee51bca4873fa225d8` |
| 3 | `theorem` | [forIn_eq_forIn'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/forin-eq-forin.md) | 51 | `result-track:4e2f83e9e6f88e7e26d7230caf3ae4f21c6619e8ead4aafa0b6f4eca3a4380c5` |
| 4 | `def` | [ForInStep.value](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/forinstep-value.md) | 59 | `declaration-track:c635755f93809631a23322ceff2e53d63a6f916c89af8120336683886b9e2132` |
| 5 | `theorem` | [ForInStep.value_done](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/forinstep-value-done.md) | 64 | `result-track:eb92334fef616dfe69c71d535672ababc06a47a4a3805f0c964f2a5ec2f694d2` |
| 6 | `theorem` | [ForInStep.value_yield](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/forinstep-value-yield.md) | 65 | `result-track:6058ed24979f767b72b296611fd57d21973598f7369ed7b078f9efd4c3678baf` |
| 7 | `def` | [Functor.mapRev](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/functor-maprev.md) | 73 | `declaration-track:761c1f9608066e85d5f0bdb4b3955d65b151a5177e7817c3489d16bb7f2fec32` |
| 8 | `def` | [Functor.discard](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/functor-discard.md) | 90 | `declaration-track:fa3c144da8517ffa940c42617ecd979745bbd8841bbcf42ba4d3a36f1fce7d4c` |
| 9 | `class` | [Alternative](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/alternative.md) | 108 | `declaration-track:32f446ecb0fe8e0b1d567ed2deef477dd597f17842f41bbbe6c5bc411b16c7a9` |
| 10 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/instance.md) | 120 | `declaration-track:0e2304be123cd4b4e6d8f9dc751086a7ec631982500f6e0a4a5b6608f1c827ee` |
| 11 | `def` | [guard](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/guard.md) | 129 | `declaration-track:985147f51ccc6885e94edaeb55ba730e01c60ac5c286bf859c801973db9cd9a5` |
| 12 | `def` | [optional](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/optional.md) | 135 | `declaration-track:de176c2a2c3a5435868df28fac3ff2a1cc4af060b80dd0ac4df22288a54db09f` |
| 13 | `class` | [ToBool](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/tobool.md) | 138 | `declaration-track:0f01908ce7a6b6d031d27daa796cf727c90ccd6383c575f40acfb9c14feda9ec` |
| 14 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/instance-source-edition-5.md) | 143 | `declaration-track:ea8592534ea1fe1dabc5278671935364bd254c7f002715a8c5a7b591cff46371` |
| 15 | `def` | [bool](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/bool.md) | 146 | `declaration-track:97aeed0a01d12cc1f26a797ef06eac9f951a62d4d039e7e99ea55584b17dbd37` |
| 16 | `def` | [orM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/orm.md) | 158 | `declaration-track:c912c474e555db9d5dad329b65a304de12b88c36312773381ab1de8128192617` |
| 17 | `def` | [andM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/andm.md) | 175 | `declaration-track:85fdc55fb30da5e683cb723e62033fa2154b62ecc16a838609e1939241edc962` |
| 18 | `def` | [notM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/notm.md) | 188 | `declaration-track:a570e4c8e23b04aa30fe32edb4a5c4d66246b10fbfbd7070408f837078cb0477` |
| 19 | `class` | [MonadControl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/monadcontrol.md) | 315 | `declaration-track:ab5f430190c28699d3006ffc62dc15f4d5535f355124d8f5f096f6f201ee9820` |
| 20 | `class` | [MonadControlT](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/monadcontrolt.md) | 344 | `declaration-track:927d1b123fc64685e87aece2af9e32879dec110cada12121c8be9d0a54d36956` |
| 21 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/instance-source-edition-2.md) | 367 | `declaration-track:1b2530c164a88aac331851e0097f81c2bec82caff23307b762de554f645f48de` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/instance-source-edition-4.md) | 372 | `declaration-track:ac3b144990d398b6a9e8e3b10f15fea1be62206ef3fcbe7003d15e48740570bb` |
| 23 | `def` | [controlAt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/controlat.md) | 386 | `declaration-track:fdc8b9c2ee4f314887774bfa9f9f9caa31550485d6faa2e3a749ce9afe695c0c` |
| 24 | `def` | [control](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/control.md) | 400 | `declaration-track:c683653dafb8fd68962cab5384c9deb081e7a10a517886f3382100a2cb24dc01` |
| 25 | `class` | [ForM](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/form.md) | 414 | `declaration-track:067a51eba822d381414d7aca26d8af71e92017962520b7d8cee540a986cf092e` |
| 26 | `def` | [Bind.kleisliRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/bind-kleisliright.md) | 424 | `declaration-track:fa929247ee97dbbf11177c40a5777a1307d0096816afb31cd68bc79326781bab` |
| 27 | `def` | [Bind.kleisliLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/bind-kleislileft.md) | 429 | `declaration-track:31a2e7e066d0cc8a05e745cb177a36d602b5fe31c84de1d187adb2d00336897d` |
| 28 | `def` | [Bind.bindLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/BasicBasicNamespacedPublicForInStep.lean/declarations/bind-bindleft.md) | 434 | `declaration-track:bdd8cc97b852893714ab799be2a4293823762c2b7891e9beaaaac227144bfca9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1829a409405c67a103d3885a7a47c9f1becc9542115fb40e42af361004786d65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantca90daf1426a8f446d2dc103d8e5bc18450fc95dc019d4f414549998a77ddfca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
