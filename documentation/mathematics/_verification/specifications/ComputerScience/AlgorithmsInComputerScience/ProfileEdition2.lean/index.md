# Verification target: Profile Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39ae4da1726a421619f83ee463c7f5555c779379",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant6807701894d53bd4110542acc9b849d435a36a582b32f66614fe4832d0636174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39ae4da1726a421619f83ee463c7f5555c779379`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant6807701894d53bd4110542acc9b849d435a36a582b32f66614fe4832d0636174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant6807701894d53bd4110542acc9b849d435a36a582b32f66614fe4832d0636174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.Kind` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.Kind` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RootKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/rootkind.md) | 17 | `declaration-track:082afd62a82f8a7adb13aeb364e70ab8d773879ada1b7edb59f46a1bdc669cb3` |
| 2 | `inductive` | [BackboneProvider](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/backboneprovider.md) | 22 | `declaration-track:e92512045e1a953a4a8e36e0d2a0caf53708e0d5c8546da07229d90bfdebfa9f` |
| 3 | `inductive` | [AdapterKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/adapterkind.md) | 27 | `declaration-track:aafe4d73f702678439aa758450e20d03d69204e59c70db92a383354f15e46bf1` |
| 4 | `inductive` | [FallbackKind](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/fallbackkind.md) | 36 | `declaration-track:91f0a4ebe3fe4767e60703fd4c385c9067b291938736ec5da106ae5195a89d82` |
| 5 | `inductive` | [FallbackSelector](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/fallbackselector.md) | 41 | `declaration-track:e26fb9cb19f45172d522081514b632d5d7bcbfc12fef798ffbb3941024ce4b65` |
| 6 | `structure` | [Adapter](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/adapter.md) | 48 | `declaration-track:1d4ec4f6e8972950182fd26988efdba12ba5063aef3deab4c999ec396bdfbadd` |
| 7 | `structure` | [Root](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/root.md) | 57 | `declaration-track:42838a74a7855bf26bcc0e09fcd5b7eafa5f116a84eb35c8ff985fef16db2a02` |
| 8 | `structure` | [BackboneNode](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/backbonenode.md) | 63 | `declaration-track:5590d72199661f1fe5995387ecd9abc0cdf55911e910c0aa82b223ce671047dc` |
| 9 | `structure` | [Backbone](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/backbone.md) | 70 | `declaration-track:c521117ff6c31f2b4b8141a1d54b1cb31eaeab4c64843e684c1e034cfb6b780b` |
| 10 | `structure` | [ParentRelationRule](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/parentrelationrule.md) | 75 | `declaration-track:7093cce54ef35c6d9f742f7c76b71f1615b30de4fc8b507904024dc6240691c0` |
| 11 | `structure` | [NamedRank](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/namedrank.md) | 83 | `declaration-track:13f0e43b2b251ac83d981b9ded387b17adc58600574730d9a04e02590ab26825` |
| 12 | `structure` | [DisplayPolicy](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/displaypolicy.md) | 88 | `declaration-track:699b408a971b4692a524e2bfb2c089d486770cc348fdb67e4264ea74577d3dbd` |
| 13 | `structure` | [IdentityCollapse](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/identitycollapse.md) | 93 | `declaration-track:f499574f5592a9b1f939c7192b2fac5ab9661639edb5167ea1faa4a9e4817282` |
| 14 | `structure` | [Fallback](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/fallback.md) | 99 | `declaration-track:22e37cac3914817e98f092b09b1dcdf224734a7457d42b4db3449f219886ac3c` |
| 15 | `structure` | [Profile](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/profile.md) | 109 | `declaration-track:d835b52f63f07119f708dcbd6fef5905a9e44a36a1d4d9a31d8ebcd9ed88375c` |
| 16 | `structure` | [Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/valid.md) | 139 | `declaration-track:caf2472e76254b75f928103a9ae9f869a784f9b1ac1fb7f77745b28ca204fae0` |
| 17 | `theorem` | [deterministic_of_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ProfileEdition2.lean/declarations/deterministic-of-valid.md) | 156 | `result-track:2b5ee6d625a8a3a36cf245bddd26ecf322b8466cb30aa89a340e695f56b352d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5df6260e3fb6b2dd0aceec9e4c429f3e231285e9852e5c71223330e6df1b9850 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant6807701894d53bd4110542acc9b849d435a36a582b32f66614fe4832d0636174.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant6807701894d53bd4110542acc9b849d435a36a582b32f66614fe4832d0636174.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
