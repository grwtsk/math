# Verification target: Two Bit0 Eq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dada6402f894050533cb8c39bc6d89b053a13aef",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Two/Variantfb69e67ab5cbd199208083a64371b562f37b8ee20ff0657096d1ac7c4c087f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dada6402f894050533cb8c39bc6d89b053a13aef`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Two/Variantfb69e67ab5cbd199208083a64371b562f37b8ee20ff0657096d1ac7c4c087f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Two/Variantfb69e67ab5cbd199208083a64371b562f37b8ee20ff0657096d1ac7c4c087f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [two_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/two-eq-zero.md) | 28 | `result-track:dfadf567c48ea75e482bd9598344152422cf241e01c70f16091ee84570573cc7` |
| 2 | `theorem` | [add_self_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/add-self-eq-zero.md) | 32 | `result-track:f59102f48a9bf2d2080e073469ec71339ba501ab139496575201151c3c219c81` |
| 3 | `theorem` | [bit0_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/bit0-eq-zero.md) | 37 | `result-track:e4a64583167905afb516f7ca7c63dff60ed6637426121569c6cc53adfccbd436` |
| 4 | `theorem` | [bit0_apply_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/bit0-apply-eq-zero.md) | 43 | `result-track:df1f452de679db106b45e05577325a65c50aa47f8d6107dbb62fd2240aac4f85` |
| 5 | `theorem` | [bit1_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/bit1-eq-one.md) | 48 | `result-track:0e2ed6a4f2219dd25698588f4c99314779cc7c2815e178fb00bf5caa237a2763` |
| 6 | `theorem` | [bit1_apply_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/bit1-apply-eq-one.md) | 54 | `result-track:3f15be984ec1cfef81bdae0f9fad55647d5dc79d0fdcf4e4cba47479140c67a3` |
| 7 | `theorem` | [neg_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/neg-eq.md) | 64 | `result-track:197b89aa5ea337eafd998c86abe8135d07d17bf4d42c503562bd8a40ddcad99e` |
| 8 | `theorem` | [neg_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/neg-eq-source-edition-2.md) | 68 | `result-track:9af9dd0d046150af1eb33058c38ede4f0f6d0f36ce3b976727dcbe28dff911e5` |
| 9 | `theorem` | [sub_eq_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/sub-eq-add-source-edition-2.md) | 73 | `result-track:fc76f5cfc29a2bfd81654ebcc25b37bea9a259f9cc97fc7dbc1c8aa3947dc417` |
| 10 | `theorem` | [sub_eq_add'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/sub-eq-add.md) | 76 | `result-track:b5660c2d68ae135f46cff3c0428c3843e4804ea81a112eea7ded9d7260811261` |
| 11 | `theorem` | [add_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/add-sq.md) | 86 | `result-track:af8447e584f5b9a115a138dfa42dae99da353dd0baf7da0fcc5bf37b366d8f52` |
| 12 | `theorem` | [add_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/add-mul-self.md) | 90 | `result-track:070be9df3d9bc337c115683b2acf4b02db0a8256556294b78d65dd6a68086f3b` |
| 13 | `theorem` | [list_sum_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/list-sum-sq.md) | 96 | `result-track:0987b5a49bd24a049e70ee71c6287c2e77d0ce96116d2ad1c891f6ecb7b19965` |
| 14 | `theorem` | [list_sum_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/list-sum-mul-self.md) | 100 | `result-track:d7fc4016013d468f808a34c6ba2a8be055bed67d1b953a6a9035baa5e9666133` |
| 15 | `theorem` | [multiset_sum_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/multiset-sum-sq.md) | 104 | `result-track:5932997f789e83a002224c7f425262d9e485437c04507a4f16dcbab50bf6975f` |
| 16 | `theorem` | [multiset_sum_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/multiset-sum-mul-self.md) | 108 | `result-track:39fa2a995f00e46940f2333bca80ecd214c21dbb03a8eabef087affec2f99428` |
| 17 | `theorem` | [sum_sq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/sum-sq.md) | 112 | `result-track:ecbae7595747d3556752baa1aa367ffaa77379df9515e6a1b754c37705230af3` |
| 18 | `theorem` | [sum_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/sum-mul-self.md) | 116 | `result-track:0633d33b93ad8b0f063ef810b6c52eb95fd6a5b266dc4d4ca4b6212343819983` |
| 19 | `theorem` | [neg_one_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/neg-one-eq-one-iff.md) | 128 | `result-track:e40f56809a519e1aaff1f6425c1a1d4cc7507a20dfb2da66f448efbcae78c6c2` |
| 20 | `theorem` | [orderOf_neg_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/TwoBit0EqZero.lean/declarations/orderof-neg-one.md) | 135 | `result-track:1a0e72533862085f14257d3faaf2a917acadbb07885a794cfb9383a13d7b8959` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a82b8067c649e41ac6b7bc4e8dff091176c26e418ae3a9117cc4c8bc647bc36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Two/Variantfb69e67ab5cbd199208083a64371b562f37b8ee20ff0657096d1ac7c4c087f56.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Two/Variantfb69e67ab5cbd199208083a64371b562f37b8ee20ff0657096d1ac7c4c087f56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
