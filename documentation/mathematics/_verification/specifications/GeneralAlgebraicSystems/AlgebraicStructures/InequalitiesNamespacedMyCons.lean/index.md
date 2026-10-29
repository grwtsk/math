# Verification target: Inequalities Namespaced My Cons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "675e6acd17fe0b187cc03babe19eb95b28a956e1",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inequalities/Variant218b742a1566c4c858e7a79634bae29476150b211b3341647eaec17811a66837.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `675e6acd17fe0b187cc03babe19eb95b28a956e1`.

Source path: `GRWTSK/Algebra/Inequalities/Variant218b742a1566c4c858e7a79634bae29476150b211b3341647eaec17811a66837.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inequalities/Variant218b742a1566c4c858e7a79634bae29476150b211b3341647eaec17811a66837.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.OfScientific` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/test-sorry.md) | 24 | `declaration-track:62abb930ea85706a8f42fbee659c2ce51eb01c6e261432db46cf35fc8980ae36` |
| 2 | `axiom` | [Real](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/real.md) | 30 | `declaration-track:c12f63fb19328328ccb464e030c47ff441c47a3449236f32cc9b8b8bf230ddfe` |
| 3 | `axiom` | [Real.field](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/real-field.md) | 32 | `declaration-track:91b93948ac34bd1b324ef0533ffa1bdb51322537ba2dfe3bceba53240be35e42` |
| 4 | `axiom` | [Real.linearOrder](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/real-linearorder.md) | 33 | `declaration-track:fbf17fcdeac18df2471ae505871d9bae5e3cc30b32bffa4eef59671a9d8835b6` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/real-isstrictorderedring.md) | 34 | `declaration-track:d4bc352261b6443cfee92e64990afdfc7a18ca11d30662c8524865f23cb7d81b` |
| 6 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-46.md) | 38 | `declaration-track:90b9f5e3678b6de3f38e6c2ab7771044a91b1fae1d32a238b66939fc518bcdca` |
| 7 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-38.md) | 40 | `declaration-track:77db49cac0b45d4d6183d6b5fdc39f95dd71852a3716a4607d76996d8d71898e` |
| 8 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-42.md) | 41 | `declaration-track:80d9d22487597356af10f85306ab2129dbbd7db3b93a7cd20b6c64c2a265610f` |
| 9 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-72.md) | 43 | `declaration-track:e4558214e8ad83661728f59fc4d3d23725651490b5970836f6bc4f7478c92c28` |
| 10 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-4.md) | 45 | `declaration-track:0bc7533d462e3adaa75d9555c16d3e4a311e9ec9bdd53d6169c2d4616804f416` |
| 11 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-71.md) | 48 | `declaration-track:e44ef5a8f702cc5d5430e945d2cb0536a9c04e3f6ce5f997db88e4224f1e1061` |
| 12 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-31.md) | 50 | `declaration-track:63e4b6419f94958e3a2f1466243d84fd21571e7e4815101d1f9c777456e2484f` |
| 13 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-53.md) | 51 | `declaration-track:a30e0efc91da8287a6ce86909f1b080740522f202cc590afb9cbb8742bcccf0e` |
| 14 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-57.md) | 53 | `declaration-track:b0b469f7b5da03763a39da8add881e806e504f29329f9c06dd702ddc6c3d83fa` |
| 15 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-47.md) | 55 | `declaration-track:933ff7cd8b9dc1066d86ce954eabd1ea24ef13a37b7a1033c0d6496a266e8dee` |
| 16 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-68.md) | 57 | `declaration-track:dce58550908414194a5cb3aa73ebdea7227ab752c1e34aa44686aaa9a38134e3` |
| 17 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-13.md) | 61 | `declaration-track:36d62da991a619489b83be31d24bc78ba9ddb37d9e097c6aad69e98442a5d9fc` |
| 18 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-25.md) | 65 | `declaration-track:5bb86248cb1318d560df88cb92f6c09d7d7d295744b6a216464f2afec6b56ad6` |
| 19 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-21.md) | 67 | `declaration-track:52469447cee42028ad8c32c247d2057bbf61f8cc86f4fa3debad18651f21f5b8` |
| 20 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-70.md) | 69 | `declaration-track:e4226f841f5eda82aa102c63e64702021354dafb4b14731710b477dd3d3ad30d` |
| 21 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-30.md) | 71 | `declaration-track:5ebdcf80b9f2e95643b92753fa495cec895151c7ca0d46709f00e3f0394ced45` |
| 22 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-65.md) | 73 | `declaration-track:d46058137aec0c1e6d62c0f8a04099db28f852131e371a5307718378869f7979` |
| 23 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-51.md) | 75 | `declaration-track:9f398dba327d4f72244a5538ee7476c9f12208e62d8462483a38ff5206f8c764` |
| 24 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-28.md) | 77 | `declaration-track:5df2213307385696804a5b4ce8a5a3af750093442023c5ec484d80cc3aa88101` |
| 25 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-19.md) | 81 | `declaration-track:45ddaed7e757e51c1164cbb8199c80b48a0ded9645f632689214c2ebaf4ddb2a` |
| 26 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-44.md) | 84 | `declaration-track:87fec31034b2ab0ba0cfd127799dad70a2828215c802abc1b3a4abbdf0d17b93` |
| 27 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-9.md) | 87 | `declaration-track:2afabcbc60bd839f8a959bfd100b8b9cd68224576cd700097ff4a3be77e4507b` |
| 28 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-3.md) | 89 | `declaration-track:0a91855cd081c34a65f4da5dc5b1899da126d77429382561d4b550de291f92c7` |
| 29 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-35.md) | 91 | `declaration-track:761cf6c545f1805ced67e24b79e181b7924346970a5d7983e5e13115d52adfc0` |
| 30 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-6.md) | 93 | `declaration-track:119511085cbef12c55aa75048dbdc1e67cc5699ded388d66c9e6ef77f35b110b` |
| 31 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-59.md) | 95 | `declaration-track:ba90cfaa2ad6360168dab056a847ed84e53f6f284190b39c683cd495f967b4f2` |
| 32 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-8.md) | 97 | `declaration-track:20bac8000132adf12dc4553cebe32336d04bd5370248ef7a9e0fd312690f19af` |
| 33 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-34.md) | 99 | `declaration-track:72983c8ba139c776cb39f2a3820fead3c0039359d10a5344a48c90b1fb185c1b` |
| 34 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-14.md) | 103 | `declaration-track:3a73ed9cd46e670f30d2c20474ea19416e7c3bb72438fe1fe1e41b2f4c324c24` |
| 35 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-39.md) | 105 | `declaration-track:780b78f490007ee516d792d72a0fc2f0c107f43fe4508c09f1db2282817f936c` |
| 36 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-10.md) | 107 | `declaration-track:2e573ec5533376b94faef7dc416ab109802c70da5144452bb74f396c91c61672` |
| 37 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-73.md) | 110 | `declaration-track:ec88b174f1c3226dc6a33f80becdd0cfe99494f307ccfadfb2dabbd2162222c7` |
| 38 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-45.md) | 113 | `declaration-track:8add4313726a1e6b0c3593abd1ff3525c31991d929f4b04e0094cafa321b5a3c` |
| 39 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-55.md) | 118 | `declaration-track:aae2adb7523c6439124a2b95f5e4215077ed03617c2d0144ba0644e52182746d` |
| 40 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-69.md) | 122 | `declaration-track:defe2849a675e78bef09dcff8420c68e4bb60a1c8f8da8963de58ad92fbc6146` |
| 41 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-17.md) | 131 | `declaration-track:44d0b858196f5dcbec1f241a6bc8fc5ddd289de72fe30ab70edf13576789ee15` |
| 42 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-29.md) | 139 | `declaration-track:5e2bdb5636580e2c1cc1cc7b83cac371287bf4c697b0229a8818bcb9f248f009` |
| 43 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-24.md) | 143 | `declaration-track:5a6d556ef6a8251a967d831e9e6e136761f37117db09bd80c7a71231e1445339` |
| 44 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-60.md) | 148 | `declaration-track:c29b738b1f7a5a8cb04fc5c73b628206d7e300655ede9052adb1a73573bc4a2c` |
| 45 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-43.md) | 150 | `declaration-track:85ccb03ddb13b4179f5434cc01c18fc881c9537ffec65f3f105e187c443f1b53` |
| 46 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-22.md) | 151 | `declaration-track:5921e6812520885b2d7f49f40185398cce65e446bde0de0fa79846f1e680276d` |
| 47 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-27.md) | 152 | `declaration-track:5de2a8f0e21a933bd389ac10ccaf14f9ba4705a426f223c15e3d9c43b09925eb` |
| 48 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-66.md) | 154 | `declaration-track:d61ec3adf51af561c5795d16706652ec9fae2ac794ee415aee9a3f6d278949e6` |
| 49 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-15.md) | 159 | `declaration-track:3d3996afb180700421e0033d0fb0d1f0180a72f460ee428c8bf2e2457309097d` |
| 50 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-49.md) | 163 | `declaration-track:9d6fc4a919b00a8736a7bee1413e3907e6779855265f88411edadf03d6b6d097` |
| 51 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-48.md) | 170 | `declaration-track:95e432340d342572a6bc07f7fe262a2def24351ad55734927179e22cf6c6c561` |
| 52 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-67.md) | 180 | `declaration-track:d8e3bf0f7a49a6784e495191addf873a631a34a90a232d54b1f11725f1e9209f` |
| 53 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-41.md) | 187 | `declaration-track:7b2920471345284a36fce713c1c81abf27f9d2c3f5237ad6a0b991a377217ae7` |
| 54 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-52.md) | 193 | `declaration-track:9fcd02b4f5d23a902c332e17c54f8c04e6ceedf4cbe433da1872fac05e1436af` |
| 55 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-16.md) | 199 | `declaration-track:3d3b17e391bfa231138e48b4d08e4610eeecea309b3a5d2bbcb1b4202ce77147` |
| 56 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-64.md) | 204 | `declaration-track:d176dec6de599c21ad9c2d341ac1927c6edbc6121e8f6ef0000dbe2727333e87` |
| 57 | `axiom` | [f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/f.md) | 209 | `declaration-track:f41032544c818b09bef7fed418659c08e0a454046c1cf83d795b15d6c05e12ae` |
| 58 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-2.md) | 211 | `declaration-track:0942b093e5ea860f83c5f7add3da8615b7847915cee34b98ddb9f22e90e58f53` |
| 59 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-12.md) | 221 | `declaration-track:316ce37d45402563bc4da9e394b2ec619ce4d3239af75117f43caeb131679395` |
| 60 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-50.md) | 232 | `declaration-track:9d7b4ea4e89e22b48d4052b28b7a575b3f881801453f354630ccdf849234ebeb` |
| 61 | `def` | [dontUnfoldMe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/dontunfoldme.md) | 237 | `declaration-track:ccf14e1e87b114b072f5e6eb5457dcaeaf6d7f086c31deee0a8d354cdba379da` |
| 62 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-11.md) | 242 | `declaration-track:2e5eefc2b2589bfcd306607853b7d0c7b08030735d39ef47d3969649567f4046` |
| 63 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-36.md) | 249 | `declaration-track:76e60d233aef2f8110adcebfa6674a07b18adff9d2278875b7b79d72bcae1925` |
| 64 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-40.md) | 254 | `declaration-track:7a8e542c00b7436f3c78860b61e96305a6f63e00798dfbf73f33397f9afd2d2e` |
| 65 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example.md) | 262 | `declaration-track:05067184ee16f4d5bbeebc6efcc78a49501196e78f361083c2d8fc57cd9b4ab1` |
| 66 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-23.md) | 271 | `declaration-track:59f8e2fba88b4fef61c550100b4a91a8e6fe7a9c666534727394dddcf6138a33` |
| 67 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-54.md) | 272 | `declaration-track:a9ff92b4f39064107e0f4e124499ed56c9ed3a36cfda065eef0cca4472a5bfdb` |
| 68 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-5.md) | 273 | `declaration-track:0d485c1008b0df7181f003d479f10f81057561b290c11d97e2adced8ef54316f` |
| 69 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-62.md) | 275 | `declaration-track:cec78b4e3cdc68db552d4c9fef1616cbdb764c1ad183b69ea2d1b082cdd728a3` |
| 70 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-32.md) | 276 | `declaration-track:67400c185fb3c5e2ca21992225b84923d881a1067931f29529afffd79e0c7cc2` |
| 71 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-74.md) | 277 | `declaration-track:f0b9e804d8d7e825c6de59c32b4c53751be4279370df925fb1eec84b436f2324` |
| 72 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-37.md) | 281 | `declaration-track:7725cb16a8b20d281e27ced10ebf510f4bdb1007eb230b839ae74356c6bc1416` |
| 73 | `def` | [myCons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mycons.md) | 285 | `declaration-track:15191fac6a920078926e58fcd5dc98db709a70095f5bb279ba49b1ba7e98c09f` |
| 74 | `theorem` | [myCons_monotone](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mycons-monotone.md) | 286 | `result-track:e7d7a158f44d43c576d0a5c047e4b8e20469d5120482c239021fd372fd1a217d` |
| 75 | `theorem` | [myCons_monotone'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mycons-monotone-source-edition-2.md) | 287 | `result-track:ef0aaee7d162432c07d5c3f4abf9a5ac2fddc4138ac4dbdfb629f9e69f2df34d` |
| 76 | `theorem` | [myCons_antitone](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mycons-antitone.md) | 288 | `result-track:70d30c59b7cb5362038b3d1ed711efd65b1338c447de270e1a86ea170e870725` |
| 77 | `theorem` | [myCons_monotoneOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mycons-monotoneon.md) | 289 | `result-track:18603bdf6c08888159d2151d5c874a16a2bf91587c12cfe14c3d6985705b2b3d` |
| 78 | `theorem` | [myCons_antitoneOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mycons-antitoneon.md) | 290 | `result-track:0d0f5a276892aec55018980bbbaffbd5aa093741c670b67ab63a6df1f13d34a3` |
| 79 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-26.md) | 293 | `declaration-track:5bfa91b2301b7ea3394705e94bb738451c742ceb8c51a689e18969055ee60215` |
| 80 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-7.md) | 297 | `declaration-track:19272a6702e4d22605b08dbae2a74a8fe9ab1701ec3f085845a750af2f526b5f` |
| 81 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-63.md) | 301 | `declaration-track:cfcc11dd3a45d426275f7bb6abc16f484a39ad31eb8126714c60c457c1e60a82` |
| 82 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-58.md) | 305 | `declaration-track:b39d4591b9284442fd2c340f11761de8f2a06aadb15602e8782a392064ff44ba` |
| 83 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-18.md) | 309 | `declaration-track:458ba06faaf72821dc5d5284603be0cecd7e26355920a14a4655c4a40b3b11e9` |
| 84 | `def` | [myMono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mymono.md) | 312 | `declaration-track:d03076a929ff65382d507f850a20f8d0223f5e64f0ce64eb13fd715ec2becd20` |
| 85 | `theorem` | [myMono_strictMono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mymono-strictmono.md) | 313 | `result-track:9a119ce61c9f52e96b64f8b553350f2b84cc669fc87b576c2184a9f7168a6b47` |
| 86 | `theorem` | [myMono_strictMonoOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/mymono-strictmonoon.md) | 314 | `result-track:e93b475171abf8c83196ff183247d7ec276fa29cc36c3c2a44b669eba216d02a` |
| 87 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-56.md) | 317 | `declaration-track:ace2f81d9912d5ca96f6a49c95de3537ea2318bf9c50ef9bbc271addc8e5226c` |
| 88 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-61.md) | 321 | `declaration-track:c67b1b53f2e73e91810b36d5045688a91a71ec959d7beb7a6ad2aff80c8bfb71` |
| 89 | `def` | [myAnti](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/myanti.md) | 324 | `declaration-track:ad2d497061bd926d1914fdd3474e968890185a2b71c6a8fa04303ff198c59d64` |
| 90 | `theorem` | [myAnti_strictAnti](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/myanti-strictanti.md) | 325 | `result-track:fd50352340ec374a9971921f9e490fc945469e56e9d7ffafc14eef7b319a6cee` |
| 91 | `theorem` | [myAnti_strictAntiOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/myanti-strictantion.md) | 326 | `result-track:f48ba49d3119523a992a8480da9a9f039a5d904efec0a12ce98191fcbfe7c921` |
| 92 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-20.md) | 329 | `declaration-track:4cba3a172e50240b6c5a72ca7011268ec026e9dc073421ddb72bd4a281d26012` |
| 93 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/InequalitiesNamespacedMyCons.lean/declarations/example-source-edition-33.md) | 333 | `declaration-track:716bc3e39611912fd7a95aa742015f1952fe128ea64d4ba3b88fb9301bfea40a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4de1e5989fb59da860b9b951bee149b73595e74ce180778e8b26ab40d2c5bcc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Inequalities/Variant218b742a1566c4c858e7a79634bae29476150b211b3341647eaec17811a66837.lean","GRWTSK/_verification/specifications/Algebra/Inequalities/Variant218b742a1566c4c858e7a79634bae29476150b211b3341647eaec17811a66837.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
