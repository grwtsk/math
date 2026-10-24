# Verification target: GRWTSK.Topology.GeneralTopology.RationalSubtypeProbe.Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40aac8fa9ff8c4956ca8bedd4020a7276200388e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40aac8fa9ff8c4956ca8bedd4020a7276200388e`.

Source path: `GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Bernstein` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Rev` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/unitinterval--64b22380d64f178edf48d4ce.md) | 27 | `declaration-track:64b22380d64f178edf48d4ce7bb199f2a88d9a9520680ffa56b78a29467f1463` |
| 2 | `def` | [reflect](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reflect--7ef502c1b0887ae5b75d6acd.md) | 30 | `declaration-track:7ef502c1b0887ae5b75d6acdb0e691bcee7628b0857bb85cb83d47cddfe56437` |
| 3 | `theorem` | [coe_reflect](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/coe-reflect--9a6bcc3380428b1198187440.md) | 33 | `result-track:9a6bcc3380428b1198187440a8602be3204c455e4941e748338dbbe6771cff13` |
| 4 | `theorem` | [reflect_zero](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reflect-zero--84fdbc60a9ede4bc64ffd0e3.md) | 36 | `result-track:84fdbc60a9ede4bc64ffd0e3a9275f79db9ee0273b8ee65be70f378364ffe003` |
| 5 | `theorem` | [reflect_one](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reflect-one--4b2adbae91fd541652637534.md) | 39 | `result-track:4b2adbae91fd5416526375345418674f48bb7e0b3c37342fc05df339a4dcff9a` |
| 6 | `theorem` | [reflect_reflect](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reflect-reflect--ada92ea10b2e65aba29979ba.md) | 42 | `result-track:ada92ea10b2e65aba29979baad4494837943940831964aaa1652bf4fb23fde14` |
| 7 | `theorem` | [continuous_reflect](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/continuous-reflect--6db2ea2bf87c8531f64ed36b.md) | 45 | `result-track:6db2ea2bf87c8531f64ed36b79c86c93a91ebb3bb4726258c72135bd73ae06c4` |
| 8 | `theorem` | [bernstein_nonneg'](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/bernstein-nonneg--f10eeb67bfc6392b61e9ca67.md) | 47 | `result-track:f10eeb67bfc6392b61e9ca673f74938dd804fb0d3c17ca2dcef08621e319c8f5` |
| 9 | `theorem` | [bernstein_sum_one'](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/bernstein-sum-one--be7161e0f96ec86eb77132bc.md) | 50 | `result-track:be7161e0f96ec86eb77132bc868dbcfffccee723e086e991baee734923a1d8bf` |
| 10 | `theorem` | [bernstein_at_zero](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/bernstein-at-zero--329681d21158e0453764253c.md) | 55 | `result-track:329681d21158e0453764253ca1f8f528fc944bd629173275032199b50b783123` |
| 11 | `theorem` | [bernstein_at_one](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/bernstein-at-one--4c1db92d402f519aa3dd13d1.md) | 66 | `result-track:4c1db92d402f519aa3dd13d18933f786225245947747c180bfe5ccfeb6b0b090` |
| 12 | `theorem` | [bernstein_rev](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/bernstein-rev--9f055344c741cad8c3905c02.md) | 76 | `result-track:9f055344c741cad8c3905c0289820efd2f003cc669ce498f19bab5b6694ae6a1` |
| 13 | `structure` | [RationalSegment](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/rationalsegment--e5158e125188822c39472448.md) | 85 | `declaration-track:e5158e125188822c39472448136b3623b5bd005abc33238f4d3b77562c4dfb04` |
| 14 | `def` | [denominator](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/denominator--4e1223a6adea44df89ab3bfd.md) | 95 | `declaration-track:4e1223a6adea44df89ab3bfd44bb4220131e1771795cab7e4b203bd93d701d71` |
| 15 | `def` | [numerator](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/numerator--ede38348aea745c177eebad1.md) | 99 | `declaration-track:ede38348aea745c177eebad1cdaea6891db0733ddb0576d2005c885406b2eebf` |
| 16 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/eval--66c466505d116fe5438749cd.md) | 103 | `declaration-track:66c466505d116fe5438749cd1eedec910ffc41d087e952645a66e5a898b9242d` |
| 17 | `theorem` | [denominator_pos](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/denominator-pos--2c88bd2e4d1055cd32a1cb70.md) | 106 | `result-track:2c88bd2e4d1055cd32a1cb70558eb5ca777e411b8407ce76d7e5d41cd5a8f801` |
| 18 | `theorem` | [eval_zero](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/eval-zero--b886570a479541d84ae55165.md) | 126 | `result-track:b886570a479541d84ae55165332cd354aee6b3376c3041853323c8f1da0498bf` |
| 19 | `theorem` | [eval_one](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/eval-one--aec57ebbce255b11f27d39dc.md) | 132 | `result-track:aec57ebbce255b11f27d39dc4c78af83b9d85036bb2b8461a675433841835bd1` |
| 20 | `theorem` | [continuous_denominator](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/continuous-denominator--d3f9215e1d27859aa4b0d86d.md) | 137 | `result-track:d3f9215e1d27859aa4b0d86d9e2a533c84c81d12933f012e4aa3f2297f3414bd` |
| 21 | `theorem` | [continuous_numerator](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/continuous-numerator--d77e224a925dc835ac581349.md) | 148 | `result-track:d77e224a925dc835ac5813498068e180d2b035853806993aa407d5e5e2a6624d` |
| 22 | `theorem` | [continuous_eval](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/continuous-eval--1c6c7014921ca4bec918870a.md) | 155 | `result-track:1c6c7014921ca4bec918870aae4597544f8f41392d3ca3c8e9e3d21f1fd7b71f` |
| 23 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reverse--f833a55ba5718912d07c1e58.md) | 164 | `declaration-track:f833a55ba5718912d07c1e58829be07ac714415998a0c522c58c07fb180c252a` |
| 24 | `theorem` | [reverse_point](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reverse-point--b521e0b5cec081e61fdb9f85.md) | 170 | `result-track:b521e0b5cec081e61fdb9f85bf8fdbd5981de257b17a91ef4ef3a5d93264ffea` |
| 25 | `theorem` | [reverse_weight](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reverse-weight--10ed2b4bb0f418ac468ca60d.md) | 174 | `result-track:10ed2b4bb0f418ac468ca60d5c96b95fa4aac56cf7d67e4ad48e6ad3b5ece854` |
| 26 | `theorem` | [reverse_reverse](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/reverse-reverse--ced922f5a2743bebe1ee62a4.md) | 178 | `result-track:ced922f5a2743bebe1ee62a49152f304e054cf616c08d36c4b71146c29d5e110` |
| 27 | `theorem` | [denominator_reverse](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/denominator-reverse--62181a12984d9c99dc02283e.md) | 182 | `result-track:62181a12984d9c99dc02283e5ed83ea0cfac5baa0098f980ffdb970dff3c1dd1` |
| 28 | `theorem` | [numerator_reverse](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/numerator-reverse--f4e7ba112fad30f094542bb8.md) | 193 | `result-track:f4e7ba112fad30f094542bb8091e468aaccf8684485bde52ad6acc491473bf43` |
| 29 | `theorem` | [eval_reverse](../../../../../mathematics/Topology/GeneralTopology/RationalSubtypeProbe/Variant7191a2d7f05fccb44e79448ba30c89313c11551c584e2b18101b3ecd74f5a12a.lean/declarations/eval-reverse--63e1f30c82763b5bb43206e5.md) | 204 | `result-track:63e1f30c82763b5bb43206e58d95009e6b258592856f6562e622992b24e50393` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
