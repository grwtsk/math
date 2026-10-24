# Verification target: GRWTSK.Topology.GeneralTopology.QuadraticDiscriminant.Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cd02876f0e90969d445cf2261c6db59dfcaa61d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cd02876f0e90969d445cf2261c6db59dfcaa61d`.

Source path: `GRWTSK/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Frontend` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discrim](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim--df0fe5b6d534caacd9c77368.md) | 52 | `declaration-track:df0fe5b6d534caacd9c7736862e0837e49a9f5c16cb769abd2985cc8dd365ee0` |
| 2 | `lemma` | [discrim_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-neg--7805be9f27f8674cd852e6e0.md) | 55 | `result-track:7805be9f27f8674cd852e6e0c9c5e0a207a1c3ec68155a1cbf2a05355a5491a5` |
| 3 | `lemma` | [discrim_eq_sq_of_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-eq-sq-of-quadratic-eq-zero--8611fa178811ea4e18258595.md) | 60 | `result-track:8611fa178811ea4e18258595d6d56baf24a14357181d397dd3e15de86e3468f5` |
| 4 | `theorem` | [quadratic_eq_zero_iff_discrim_eq_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/quadratic-eq-zero-iff-discrim-eq-sq--6b95b2880dfff7b9eb098f57.md) | 67 | `result-track:6b95b2880dfff7b9eb098f574234ce85f7c84f6ee918b613d1c31849453a4434` |
| 5 | `theorem` | [quadratic_ne_zero_of_discrim_ne_sq](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/quadratic-ne-zero-of-discrim-ne-sq--c74f6206e3ee22322f84da9a.md) | 77 | `result-track:c74f6206e3ee22322f84da9a15a7b8e027ff0d2865a8728658777ff77c18bb17` |
| 6 | `theorem` | [quadratic_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/quadratic-eq-zero-iff--5321f4c3957a9f551a9edb42.md) | 88 | `result-track:5321f4c3957a9f551a9edb42ad28770e533590bf79a8027bd323559e00ebd9a3` |
| 7 | `theorem` | [exists_quadratic_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/exists-quadratic-eq-zero--421b36de64420933cc0df05e.md) | 97 | `result-track:421b36de64420933cc0df05e35983d23bad4b8e79e3223912f261bd3badb5d6d` |
| 8 | `theorem` | [quadratic_eq_zero_iff_of_discrim_eq_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/quadratic-eq-zero-iff-of-discrim-eq-zero--8e4ab0ac4d4953d05639e95c.md) | 105 | `result-track:8e4ab0ac4d4953d05639e95c496d9777a9ea65becd8294170cd953e2fb59c84e` |
| 9 | `theorem` | [discrim_eq_zero_of_existsUnique](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-eq-zero-of-existsunique--889843e7227b9225b6260ec5.md) | 110 | `result-track:889843e7227b9225b6260ec521366701eb9d128425c3a74da8116a88392ae345` |
| 10 | `theorem` | [discrim_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-eq-zero-iff--c9bdeccab237e8a42920d13b.md) | 120 | `result-track:c9bdeccab237e8a42920d13bc93fbaf23020da7beaa4b3a6e5bdd0ece5ac7fe3` |
| 11 | `theorem` | [discrim_le_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-le-zero--5ac4b0da5be6be8bf45a45dd.md) | 132 | `result-track:5ac4b0da5be6be8bf45a45dd544fc769a7fbf35f5f884479aeaed2b2e53abacf` |
| 12 | `lemma` | [discrim_le_zero_of_nonpos](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-le-zero-of-nonpos--1db25f15656bd6fdcfe3e172.md) | 154 | `result-track:1db25f15656bd6fdcfe3e17235498d84f9541c8e0ba91badd58274479f241d0b` |
| 13 | `theorem` | [discrim_lt_zero](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-lt-zero--d1386bbb4fe498b511b06ee9.md) | 160 | `result-track:d1386bbb4fe498b511b06ee98c36a996c339b4e532a9423dbe34f23ff11cd3d4` |
| 14 | `lemma` | [discrim_lt_zero_of_neg](../../../../../mathematics/Topology/GeneralTopology/QuadraticDiscriminant/Variantfca643eeb49738ab264aab901b6e79ea25cb5be3669ce45356e85aa8f0cdc808.lean/declarations/discrim-lt-zero-of-neg--d0d36a1c2243de02f4f6fc47.md) | 169 | `result-track:d0d36a1c2243de02f4f6fc473a2564e9242f5ddc762555265ddcd496c9c5641e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
