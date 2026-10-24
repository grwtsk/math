# Verification target: GRWTSK.Topology.GeneralTopology.TietzeExtension.Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65e77ae6c01e8592f9cc53a4fcd12b24fd0dae55`.

Source path: `GRWTSK/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.IsoIoo` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Normed` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsBounded` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/tietzeextension--b4e7de3e17ca0e163750f21e.md) | 51 | `declaration-track:b4e7de3e17ca0e163750f21e48ff7dff321a5ac6c82984c1fbfce1a479a6d309` |
| 2 | `theorem` | [ContinuousMap.exists_restrict_eq](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/continuousmap-exists-restrict-eq--266ae1d43bd9b8b8db7b2fb1.md) | 64 | `result-track:266ae1d43bd9b8b8db7b2fb162a69b08fa273aa10e56cee75dff83e9841a02d5` |
| 3 | `theorem` | [ContinuousMap.exists_extension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/continuousmap-exists-extension--05e7238c634eef2485c81385.md) | 72 | `result-track:05e7238c634eef2485c81385fa743bc259574ed68ced9d70ff3ea16cbe9e223e` |
| 4 | `theorem` | [ContinuousMap.exists_extension'](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/continuousmap-exists-extension--f332d52eb5a888d015930cde.md) | 85 | `result-track:f332d52eb5a888d015930cdea6b5f195f61c8bde132675b9498113658278eb5c` |
| 5 | `theorem` | [ContinuousMap.exists_forall_mem_restrict_eq](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/continuousmap-exists-forall-mem-restrict-eq--31847813cfeec0744b5444cc.md) | 95 | `result-track:31847813cfeec0744b5444cc7f642c50bfd3ffe37076b0aac7862a83b0e266f1` |
| 6 | `theorem` | [ContinuousMap.exists_extension_forall_mem](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/continuousmap-exists-extension-forall-mem--b33ed09b00c914497b92ca33.md) | 108 | `result-track:b33ed09b00c914497b92ca334a6a104e00ef75418d034ba2d77ff0a55d82ea2b` |
| 7 | `instance` | [Pi.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/pi-insttietzeextension--b719b993b347c199544af141.md) | 115 | `declaration-track:b719b993b347c199544af14113804c3fd7f3dedf8ec686cb56fd077097daf432` |
| 8 | `instance` | [Prod.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/prod-insttietzeextension--3cd1f366b4a5fb0c39f5b6fb.md) | 122 | `declaration-track:3cd1f366b4a5fb0c39f5b6fbed4f364e16c6690a444de20d951fd06680b17a57` |
| 9 | `instance` | [Unique.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/unique-insttietzeextension--67f0c8d7d73442dbeedb2294.md) | 130 | `declaration-track:67f0c8d7d73442dbeedb2294f737e159af1069eff5eb581712b305a7ee89009a` |
| 10 | `theorem` | [TietzeExtension.of_retract](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/tietzeextension-of-retract--5d87b2551a29e414146036ff.md) | 135 | `result-track:5d87b2551a29e414146036ff658194f81408a8154485d8a51e165d673a95b368` |
| 11 | `theorem` | [TietzeExtension.of_homeo](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/tietzeextension-of-homeo--b1b130cedd555dd34ab31e81.md) | 147 | `result-track:b1b130cedd555dd34ab31e813dbe751d1900a6b9651fafa98cc8b58feaa2d6b2` |
| 12 | `theorem` | [tietze_extension_step](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/tietze-extension-step--b8cf50be3d87bdf692e2299f.md) | 170 | `result-track:b8cf50be3d87bdf692e2299f8bbbb68a41f58dc59cc9581d3cc6186677f7a431` |
| 13 | `theorem` | [exists_extension_norm_eq_of_isClosedEmbedding'](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-extension-norm-eq-of-isclosedembedding--acc0081351724406f9e42a7c.md) | 220 | `result-track:acc0081351724406f9e42a7c3306fc77419708f4998fea2e0047031b0279b4e7` |
| 14 | `theorem` | [exists_extension_norm_eq_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-extension-norm-eq-of-isclosedembedding--ca22cd003166bac64bf7b3f6.md) | 269 | `result-track:ca22cd003166bac64bf7b3f6acd93134a052a6303ec7d0db10b16369bdf71095` |
| 15 | `theorem` | [exists_norm_eq_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-norm-eq-restrict-eq-of-closed--4011e23f970e898428e6471e.md) | 278 | `result-track:4011e23f970e898428e6471ece5e75a61f3b9edf559a6165fdb5f1840378401b` |
| 16 | `theorem` | [exists_extension_forall_mem_Icc_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-extension-forall-mem-icc-of-isclosedembedding--6a349b6c480a848c75106f28.md) | 291 | `result-track:6a349b6c480a848c75106f280ce4080fd42a6384eaa37cbebca9a36958b72499` |
| 17 | `theorem` | [exists_extension_forall_exists_le_ge_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-extension-forall-exists-le-ge-of-isclosedembedding--5e2713a992258a1881317f16.md) | 311 | `result-track:5e2713a992258a1881317f164829a02f6b9094de82b7a4fa4345b925c9823884` |
| 18 | `theorem` | [exists_extension_forall_mem_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-extension-forall-mem-of-isclosedembedding--1574de9790783597a98c6fcf.md) | 423 | `result-track:1574de9790783597a98c6fcf752e9de68dc2918e703c1caea9202bfd04db18d5` |
| 19 | `theorem` | [exists_forall_mem_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-forall-mem-restrict-eq-of-closed--de4b6d2d367f62367294061d.md) | 440 | `result-track:de4b6d2d367f62367294061d613c4f11e10f10f59a83c28abdf8452cbf754ad8` |
| 20 | `theorem` | [exists_extension_forall_mem_of_isClosedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-extension-forall-mem-of-isclosedembedding--e5776965659db64a239d229b.md) | 457 | `result-track:e5776965659db64a239d229ba077b181a17d0a77afddeb6751e173db45c36761` |
| 21 | `theorem` | [exists_restrict_eq_forall_mem_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/exists-restrict-eq-forall-mem-of-closed--5a75774b41089eb375867fea.md) | 496 | `result-track:5a75774b41089eb375867fea5ab609132a303d88f81f5c793df75c317059bb6f` |
| 22 | `instance` | [Real.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/real-insttietzeextension--329d85ea59eb8ebaec4760e5.md) | 507 | `declaration-track:329d85ea59eb8ebaec4760e5f46a08c93eb26f44e6b88f050cacab2b1dda8ab2` |
| 23 | `instance` | [NNReal.instTietzeExtension](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variantbfd88f18786beb71fa85ee644ce577b0437a7b4e953c77ec09860d342836e0bb.lean/declarations/nnreal-insttietzeextension--d664ceee958a4b065dc6345f.md) | 515 | `declaration-track:d664ceee958a4b065dc6345fddf666d570667c6131ce7c7a9db4e353174ee881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
