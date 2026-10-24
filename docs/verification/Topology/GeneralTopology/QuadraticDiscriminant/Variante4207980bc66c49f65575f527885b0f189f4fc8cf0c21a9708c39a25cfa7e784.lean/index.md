# Verification target: GRWTSK.Topology.GeneralTopology.QuadraticDiscriminant.Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cab61a4cfb16a1f506cec10330013c28e8fb26e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cab61a4cfb16a1f506cec10330013c28e8fb26e`.

Source path: `GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Frontend` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discrim](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim--a79bdf59b6849fe1065b7793.md) | 44 | `declaration-track:a79bdf59b6849fe1065b77937f0fe1885623e7bb3a3eca0161f61779f3ddf0ac` |
| 2 | `lemma` | [discrim_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-neg--3ad4c88f36795b1303bbed55.md) | 47 | `result-track:3ad4c88f36795b1303bbed5504f24fb75f8251700ab23d51470848935a56d087` |
| 3 | `lemma` | [discrim_eq_sq_of_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-eq-sq-of-quadratic-eq-zero--7959ef55911d0bd32a081cdd.md) | 52 | `result-track:7959ef55911d0bd32a081cdd1ca0aec99846e25b2a6c53afa9b4a235ded87b71` |
| 4 | `theorem` | [quadratic_eq_zero_iff_discrim_eq_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/quadratic-eq-zero-iff-discrim-eq-sq--0d94d419140b5b2443128ef4.md) | 59 | `result-track:0d94d419140b5b2443128ef4f78e6be0f4abc0e238f33e3b562aebdc9fac7d64` |
| 5 | `theorem` | [quadratic_ne_zero_of_discrim_ne_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/quadratic-ne-zero-of-discrim-ne-sq--136507712d5dcd3ae2d88be1.md) | 69 | `result-track:136507712d5dcd3ae2d88be1c05dd0c823f9da4f1bbd80207d8f35f0127c1844` |
| 6 | `theorem` | [quadratic_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/quadratic-eq-zero-iff--26b3e0cba5b8752ee5d4fe19.md) | 80 | `result-track:26b3e0cba5b8752ee5d4fe1920a08ae373e917501ab45abb8df52f1f86fd9f84` |
| 7 | `theorem` | [exists_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/exists-quadratic-eq-zero--dabb29322bf78001153b07ea.md) | 89 | `result-track:dabb29322bf78001153b07ea45694943caf026b2951db9566d3af845f7b57d66` |
| 8 | `theorem` | [quadratic_eq_zero_iff_of_discrim_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/quadratic-eq-zero-iff-of-discrim-eq-zero--570560078bf9197692de2263.md) | 97 | `result-track:570560078bf9197692de22637513c9214d3a8e4b3d26b2e1a11aded4982e5b26` |
| 9 | `theorem` | [discrim_eq_zero_of_existsUnique](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-eq-zero-of-existsunique--79a7a43052ec808b07b11a1a.md) | 102 | `result-track:79a7a43052ec808b07b11a1a99e60de0e92f05bfe9f356c66f0ad27f6a949848` |
| 10 | `theorem` | [discrim_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-eq-zero-iff--9a6d586ab163735983a11706.md) | 112 | `result-track:9a6d586ab163735983a11706691f5975596d3a04ccae4aa53886ba5359107bfa` |
| 11 | `theorem` | [discrim_le_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-le-zero--bde5cb8c3209502f1d822220.md) | 124 | `result-track:bde5cb8c3209502f1d82222025c4f072dd5e8a8d3ec94015e68a7087dff9a4e1` |
| 12 | `lemma` | [discrim_le_zero_of_nonpos](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-le-zero-of-nonpos--fd94b9c049c7d3fa95a9a13d.md) | 146 | `result-track:fd94b9c049c7d3fa95a9a13d4c9643591505aefda94d7966e0a799aa17db2e0c` |
| 13 | `theorem` | [discrim_lt_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-lt-zero--265334c70a3f8f940adfff3b.md) | 152 | `result-track:265334c70a3f8f940adfff3b3a58a2b0da33b265b88d07edc8be94361b9b529e` |
| 14 | `lemma` | [discrim_lt_zero_of_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variante4207980bc66c49f65575f527885b0f189f4fc8cf0c21a9708c39a25cfa7e784.lean/declarations/discrim-lt-zero-of-neg--99b41eabd0fef0be316be033.md) | 161 | `result-track:99b41eabd0fef0be316be033ff6e0fa1d9efeced3999051c3d20747391aa3382` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
