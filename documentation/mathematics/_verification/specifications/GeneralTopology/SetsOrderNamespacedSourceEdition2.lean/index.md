# Verification target: Sets Order Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7353914bd589c7712f8f47f70b5a13b60675cbdd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Order/Variant67ff48ac8d844e15fd5b101358f0b80f794ad349abd0300b39a71fad5ea7f488.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7353914bd589c7712f8f47f70b5a13b60675cbdd`.

Source path: `GRWTSK/Topology/GeneralTopology/Order/Variant67ff48ac8d844e15fd5b101358f0b80f794ad349abd0300b39a71fad5ea7f488.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Order/Variant67ff48ac8d844e15fd5b101358f0b80f794ad349abd0300b39a71fad5ea7f488.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Closeds` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClopenUpperSet](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/clopenupperset.md) | 31 | `declaration-track:3b602f7a38630f16195870eec1769c0312dd64aa897041eb211de4f9212addfd` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance-source-edition-7.md) | 36 | `declaration-track:b46d6a429d6a5cb882e5c582c6625ca2831c5568ec16ac875539991709f1d159` |
| 3 | `def` | [Simps.coe](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/simps-coe.md) | 44 | `declaration-track:99a8302f98a7855cc1c455f83ec82a438368e8ce95cb94c81b1d50b1d97c2751` |
| 4 | `theorem` | [upper](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/upper.md) | 48 | `result-track:e8393f62c95f0913c310f253d1df8c646cbc3775fb1c6eb4bd79805ab4c1bda3` |
| 5 | `theorem` | [isClopen](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/isclopen.md) | 51 | `result-track:4401e859c3dae969349476f638b6d799d3a38404dff26392fab44892ba67c662` |
| 6 | `def` | [toUpperSet](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/toupperset.md) | 56 | `declaration-track:ff77522286d42be5e131ad774bdd3eba2fa59b136026c32719a0a3e2c1824a2e` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/ext.md) | 60 | `result-track:7bcc0903df25cc4e7b8eb0d7838cf15d350026411bc008237bd8bba2637dcdde` |
| 8 | `theorem` | [coe_mk](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/coe-mk.md) | 64 | `result-track:d60e8bc18d14248c0b2553c68ff2f734caea153825e37eddb4bae116e54865fa` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance-source-edition-8.md) | 67 | `declaration-track:c8bdda411ba847b7bbcaa8423acdd270770a0660beaf775d0d72adef326d2d16` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 70 | `declaration-track:abd3a6b36d39ff27174bb61b04907405f52344761fecb06ead2d1336c50e8470` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance.md) | 73 | `declaration-track:315b2b664e5c76ee77c29b0134fdbee5fb3526d11ea6a972b688159d412c6fcd` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:5ffb34b2aa057de4ee622596aaa1822795797eb5577e6018fda377429fcfbb05` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:4c083b162cac9d9be410e490a8d874bf8fdd9270911e554f845ba78e4b60c725` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 82 | `declaration-track:9c70ae38ebee1d8e52f73a70646186a9f934cfbcd2135d995ec0d52f72146449` |
| 15 | `theorem` | [coe_sup](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/coe-sup.md) | 86 | `result-track:71d3c962a0904065bc53df789d6d3378453d0ad7df8dbf8878911e8c849cb447` |
| 16 | `theorem` | [coe_inf](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/coe-inf.md) | 90 | `result-track:5d9a54b291b5c599fe5e327d624adb7e84d04d0a8c85aa14fabbf00f0433973f` |
| 17 | `theorem` | [coe_top](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/coe-top.md) | 94 | `result-track:35629638f4ddbc13ad919de2462bb32ced086bfcfe3f707535c4efd837e4afbe` |
| 18 | `theorem` | [coe_bot](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/coe-bot.md) | 98 | `result-track:7da9cc92ef39ca651acd45f1873ffe22eb823a3057aea82d0316c518e446094c` |
| 19 | `instance` | [(anonymous)](../../../../GeneralTopology/SetsOrderNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 101 | `declaration-track:7fdfd6519bfce5f7c8b4f98a1af750d65cedd1c84ef6fe3f7bb19e681750e1ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=351624ec30343d6a1d809c3dfdd851930ec932589daaa2e806797d8f235c4a0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Order/Variant67ff48ac8d844e15fd5b101358f0b80f794ad349abd0300b39a71fad5ea7f488.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Order/Variant67ff48ac8d844e15fd5b101358f0b80f794ad349abd0300b39a71fad5ea7f488.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
