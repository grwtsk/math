# Verification target: GRWTSK.Topology.GeneralTopology.Prototype.Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "294ed8da1f3cc479b35abd0cc11a297176c5951f",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `294ed8da1f3cc479b35abd0cc11a297176c5951f`.

Source path: `GRWTSK/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernstein](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/bernstein--64bb23086b95c4f7fbb48d63.md) | 16 | `declaration-track:64bb23086b95c4f7fbb48d63e73391f6bbca8eb6621718d2f1a3dacf65d1f548` |
| 2 | `theorem` | [bernstein_nonneg](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/bernstein-nonneg--54d2eac30a6673f3227fe7dd.md) | 19 | `result-track:54d2eac30a6673f3227fe7dd85482c861b08c19b6f2baf8cc608ec0d65b39bdf` |
| 3 | `theorem` | [bernstein_sum_one](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/bernstein-sum-one--3f0478900851144019278333.md) | 26 | `result-track:3f04789008511440192783330ceed306bfe2ee6fe94cac2ea350bdc291f3360f` |
| 4 | `theorem` | [bernstein_zero](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/bernstein-zero--1bfb170a5af259866daede49.md) | 44 | `result-track:1bfb170a5af259866daede49fa420c23be4ddf048c67356f7f0132ca7f7fad41` |
| 5 | `theorem` | [bernstein_one](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/bernstein-one--35f2c7184ed29087c2293739.md) | 55 | `result-track:35f2c7184ed29087c229373930c77c8071d653ad7f66154dadfd1f11f1a13a8e` |
| 6 | `theorem` | [bernstein_rev](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/bernstein-rev--47bebd399743581e0abb2da8.md) | 65 | `result-track:47bebd399743581e0abb2da80f929ddecdec14b2ceae9d8914f2713f52cbae36` |
| 7 | `structure` | [RationalSegment](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/rationalsegment--bd4c1f4d84095d9236e176dd.md) | 73 | `declaration-track:bd4c1f4d84095d9236e176ddec488f4954a69bced3b1238c326fb2856e5a8c38` |
| 8 | `def` | [denominator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/denominator--919de53c72c1d992b6709831.md) | 82 | `declaration-track:919de53c72c1d992b67098313330e505355e6642c57c93c58d4d6bf5b36a723c` |
| 9 | `def` | [numerator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/numerator--7f4c0edab4c62d4aeedf66cd.md) | 85 | `declaration-track:7f4c0edab4c62d4aeedf66cd59175e317d730edbadeef4ff5276fbde3ccfcf68` |
| 10 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/eval--cd4b1873b52a5ba2fd5fb871.md) | 88 | `declaration-track:cd4b1873b52a5ba2fd5fb8718137caba8a4ea695a8a25539291ffdc282c91185` |
| 11 | `theorem` | [denominator_pos](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/denominator-pos--5ac6fbcbed006313811bc627.md) | 91 | `result-track:5ac6fbcbed006313811bc6270f924f6c35bbb326a28537a8764d0873e935b004` |
| 12 | `theorem` | [eval_zero](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/eval-zero--4922b90dc3aaab9494bef2a7.md) | 112 | `result-track:4922b90dc3aaab9494bef2a7bb1c4ac5f6f3a5a0433a17d8736f29611c2fb251` |
| 13 | `theorem` | [eval_one](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/eval-one--4594e31c84328ce611d6dd52.md) | 117 | `result-track:4594e31c84328ce611d6dd529ec5258c4d315e262ec08622d02ed7349c3a277d` |
| 14 | `theorem` | [continuous_denominator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/continuous-denominator--54a8cef66e97560bfbe8c00e.md) | 121 | `result-track:54a8cef66e97560bfbe8c00ec1ece38029d1b8ce2b16edd871d3aee173060f76` |
| 15 | `theorem` | [continuous_numerator](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/continuous-numerator--0e73a705770be25c51c00c73.md) | 130 | `result-track:0e73a705770be25c51c00c7396099f9e0036a48dfef04e984078a5a1a8d6ef6d` |
| 16 | `theorem` | [continuous_eval](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/continuous-eval--5f64244a4145785c9dfc9000.md) | 135 | `result-track:5f64244a4145785c9dfc90001e93f760d782671f82c751b2020fe46d3dba86e6` |
| 17 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/reverse--a4d24adb3d06d90c7b475736.md) | 146 | `declaration-track:a4d24adb3d06d90c7b47573640229e19c8882155a4814663a5a3c457a17a9c2e` |
| 18 | `theorem` | [reverse_point](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/reverse-point--e449876e22916d513c2385a4.md) | 152 | `result-track:e449876e22916d513c2385a45dd55ffca1f53f11f732c1073fb3fa8eb784721d` |
| 19 | `theorem` | [reverse_weight](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/reverse-weight--140a4662cea0b9eb38015a68.md) | 156 | `result-track:140a4662cea0b9eb38015a6860fe974b7e7dfb60f27f056e167cf8fdbda003c8` |
| 20 | `theorem` | [reverse_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/reverse-reverse--60d590221de7adb96e354596.md) | 160 | `result-track:60d590221de7adb96e35459607313146e62dbe870aaf40748b98b5e628b61b55` |
| 21 | `theorem` | [denominator_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/denominator-reverse--65d05cc366a3423ef49b56a6.md) | 165 | `result-track:65d05cc366a3423ef49b56a6ee4da430858791f3f0f1032e7e5bb4a7c3cc980d` |
| 22 | `theorem` | [numerator_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/numerator-reverse--a36d6478dcf51f4eb2ec5256.md) | 176 | `result-track:a36d6478dcf51f4eb2ec5256dc880e5e2480a646db9246f8ca0a35fa77c40954` |
| 23 | `theorem` | [eval_reverse](../../../../../mathematics/Topology/GeneralTopology/Prototype/Variantddaa8e23e230846d4d775a64c9e9d60282cd0a7f7c92c82cc7cda7e4efe9f2ff.lean/declarations/eval-reverse--66fc3d3bed9d8d2cf7d58104.md) | 187 | `result-track:66fc3d3bed9d8d2cf7d581042e536f939c363d08931433ff65aa145c8b26dcf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
