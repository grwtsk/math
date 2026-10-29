# Verification target: Order Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e31c397618e0a301215f08f4c6a49ace88a477",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e31c397618e0a301215f08f4c6a49ace88a477`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/cast-nonneg.md) | 30 | `result-track:e8e9334b6fcf5a5dc960941ffe54a1b403b921295bb11ab19b92f041bf35d126` |
| 2 | `theorem` | [ofNat_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/ofnat-nonneg.md) | 35 | `result-track:01ccef64cd27a42d9a14d8f86d71f64165e38734cd1777b01bff1425cee2c7bc` |
| 3 | `theorem` | [cast_min](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/cast-min.md) | 40 | `result-track:535480cd606368d0ef1117670e52aa4d42047c5ae02e94a671f009f9f057092e` |
| 4 | `theorem` | [cast_max](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/cast-max.md) | 45 | `result-track:1814984a01df339ddfbdf412454a8549ca2a688588806d80c789f3301677de4d` |
| 5 | `theorem` | [cast_pos](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/cast-pos.md) | 55 | `result-track:f8c15081a7de97fc07f68661460d12e3c00ba292b43dc585ac2a4f6636c6d184` |
| 6 | `theorem` | [ofNat_pos'](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/ofnat-pos-source-edition-2.md) | 60 | `result-track:4930627097457218d7ab627bbdb03bf7451c89214684161e01f821a80ca572e0` |
| 7 | `theorem` | [ofNat_pos](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/ofnat-pos.md) | 65 | `result-track:1e2724a46798e634a956167172be550c3bc1ddeea315566814f5463935ff1583` |
| 8 | `theorem` | [cast_tsub](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/cast-tsub.md) | 77 | `result-track:59b7b8aef02db7257b2e1ce2c42a29b3c2d1f805fdccf659b49de41f27890303` |
| 9 | `theorem` | [abs_cast](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/abs-cast.md) | 89 | `result-track:2ab43abccc8ef0222681da256501936a08c9163837f7c785b1415bbe46f262fd` |
| 10 | `theorem` | [abs_ofNat](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/abs-ofnat.md) | 92 | `result-track:a6775b860e3b6940ec9ccc64ca6aaa3ef328fc09d5f3c2e3493792207047385b` |
| 11 | `lemma` | [neg_cast_eq_cast](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/neg-cast-eq-cast.md) | 94 | `result-track:90574c07ac83c09e83149157ff887803277ec0a94e96728cca553a3716f01b42` |
| 12 | `lemma` | [cast_eq_neg_cast](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/cast-eq-neg-cast.md) | 97 | `result-track:6d03774d0aeb2dee2f5c2fc3ae4eff7d17f681467aceb25f1772c57d2a66370f` |
| 13 | `lemma` | [mul_le_pow](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/mul-le-pow.md) | 102 | `result-track:3cf888b27ebc52868a833b3e0e86038d22208cdc13bb1a902739d96415d9c733` |
| 14 | `lemma` | [two_mul_sq_add_one_le_two_pow_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/OrderRing.lean/declarations/two-mul-sq-add-one-le-two-pow-two-mul.md) | 119 | `result-track:36fca85ceb91e0f45f0d45acffeb9a1d40e11a988fc7f00f5d2741678b169089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4212c6daab7705e5c69361fca8c9f4c64b01aac318737ab58f0ee7979f8559f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Ring/Variant073d20224c1393f2c7b9e63f3a7466cd3865a83bf5a9e181dc235612c2bb1a1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
