# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4415e5e53a8ffa948cc0edd2d4a55593cbf397d7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4415e5e53a8ffa948cc0edd2d4a55593cbf397d7`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasAntidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/hasantidiagonal--8e1b1712ca6c6e8fafab1219.md) | 63 | `declaration-track:8e1b1712ca6c6e8fafab1219a7587df724090b6ce029c4d82345d45d83a6a4b0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/instance--1e6f80f3246cea1fc2797c68.md) | 76 | `declaration-track:1e6f80f3246cea1fc2797c68ca2a3c62d75db5c8267bcb9f9439d0bfd67f37ca` |
| 3 | `lemma` | [hasAntidiagonal_congr](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/hasantidiagonal-congr--3cc58f71224724b4feee3ac0.md) | 84 | `result-track:3cc58f71224724b4feee3ac02e2ac361b54966678a2b1456d4fbe9be216447af` |
| 4 | `theorem` | [swap_mem_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/swap-mem-antidiagonal--4729cf406e5534638cbc73a8.md) | 88 | `result-track:4729cf406e5534638cbc73a84dce32a22543ecac7663a23d34947caf4a2df2a3` |
| 5 | `theorem` | [map_prodComm_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/map-prodcomm-antidiagonal--24b60da01c0779b9eeff91fe.md) | 92 | `result-track:24b60da01c0779b9eeff91fe94535a493cded18fdb5fb3df32dacce919f0f6ee` |
| 6 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/map-swap-antidiagonal--642019f9f89f47ff40c79f11.md) | 97 | `result-track:642019f9f89f47ff40c79f119c16aa9b97f015b5438a7e313cefcfbf02df3665` |
| 7 | `theorem` | [antidiagonal_congr](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/antidiagonal-congr--c57b447686743036adcb17ca.md) | 107 | `result-track:c57b447686743036adcb17cad18c57ec65056944c5020d631e096f35783f37fc` |
| 8 | `theorem` | [antidiagonal_subtype_ext](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/antidiagonal-subtype-ext--552b9c2960dfb30d70cf0bfe.md) | 115 | `result-track:552b9c2960dfb30d70cf0bfef53559a9227b8123f72b8845ccf50e2d8a8d4763` |
| 9 | `lemma` | [antidiagonal_congr'](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/antidiagonal-congr--ed356c4fe557260979dcf193.md) | 126 | `result-track:ed356c4fe557260979dcf1931e2590284525857a6781230ef7a6242bda4eb320` |
| 10 | `theorem` | [antidiagonal_zero](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/antidiagonal-zero--dec289e363ca6ab22300b33b.md) | 137 | `result-track:dec289e363ca6ab22300b33bdb482889bd433415c16b906fe31c6bb988290aad` |
| 11 | `theorem` | [antidiagonal.fst_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/antidiagonal-fst-le--3f64220e6d5d0bd08bbad8f8.md) | 141 | `result-track:3f64220e6d5d0bd08bbad8f8bc5e3d6fe0245141229f61e4155b60677edb924f` |
| 12 | `theorem` | [antidiagonal.snd_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/antidiagonal-snd-le--fb8ca2c533d76c0f81b5e063.md) | 146 | `result-track:fb8ca2c533d76c0f81b5e063f770cf23129c0ff330a11a0504dd6e7e2636352c` |
| 13 | `theorem` | [filter_fst_eq_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/filter-fst-eq-antidiagonal--57a9b928be4930cb1b112822.md) | 158 | `result-track:57a9b928be4930cb1b1128227650d67915011e488307544478154f186327c62c` |
| 14 | `theorem` | [filter_snd_eq_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/filter-snd-eq-antidiagonal--fd50a3939a3514de32cca608.md) | 172 | `result-track:fd50a3939a3514de32cca6086b9a29ef8a976fafd84b064e3da7faf3dc35a985` |
| 15 | `def` | [sigmaAntidiagonalEquivProd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/sigmaantidiagonalequivprod--95232ac235494fef9fef26c6.md) | 184 | `declaration-track:95232ac235494fef9fef26c6c708d70a1b54d7f8e679c6fb8113fa61b57266c2` |
| 16 | `abbrev` | [antidiagonalOfLocallyFinite](../../../../../mathematics/Topology/GeneralTopology/Prod/Variantc0b490f5cf49621a76a921a66b8546cf0a9a646583340a4fb8b431ca2f8d3848.lean/declarations/antidiagonaloflocallyfinite--f45ba15c44d8c0b10eda0a3d.md) | 201 | `declaration-track:f45ba15c44d8c0b10eda0a3d23eacc87fedb316f27670e6733bfcd5360ad025d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
