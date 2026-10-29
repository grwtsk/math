# Verification target: Order Big Operators Expect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f5348177ab0db6093e1bc799fb7029c7bfc7847",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant1ad5f75702d3eb8fff9fc1f5fbd4b7cb2781f45e114a70462552f185c78d1177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f5348177ab0db6093e1bc799fb7029c7bfc7847`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant1ad5f75702d3eb8fff9fc1f5fbd4b7cb2781f45e114a70462552f185c78d1177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Expect/Variant1ad5f75702d3eb8fff9fc1f5fbd4b7cb2781f45e114a70462552f185c78d1177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Expect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Rat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-eq-zero-iff-of-nonneg-source-edition-2.md) | 28 | `result-track:96cc2e4fd6ca6e022c663410372deaae1aeca33f845120de298af60f1e6cb089` |
| 2 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-eq-zero-iff-of-nonpos.md) | 32 | `result-track:097919abd5a39a800183ab6616268f616d5fdde2163d861bffc50fb0d88ca0df` |
| 3 | `lemma` | [expect_le_expect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-le-expect.md) | 39 | `result-track:ee1ccc5d57fed7d20d17287f04ae992c833c5b37ac73f35773aaa43c15c10cf4` |
| 4 | `lemma` | [_root_.GCongr.expect_le_expect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/root-gcongr-expect-le-expect.md) | 45 | `result-track:27b6169189e4639e86a3c7208665ff2495cde33c6d32441ff03a2b115f24cd28` |
| 5 | `lemma` | [expect_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-le.md) | 48 | `result-track:e7631a547bdc84278f313d061d07067de751d2da3878a5dd8badb5d08b5b8182` |
| 6 | `lemma` | [le_expect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/le-expect.md) | 52 | `result-track:f0949140e0532ffd4da947838df811a9d8e4511136957f6a9d081acae4d58c0a` |
| 7 | `lemma` | [expect_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-nonneg.md) | 56 | `result-track:964f07c848a92aa6639165855dd1590ed34318b73cfc11f5e4450b9895f95e97` |
| 8 | `lemma` | [le_expect_nonempty_of_subadditive_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/le-expect-nonempty-of-subadditive-on-pred.md) | 70 | `result-track:4b22ec968ec09f8d61b3a6da524dc16cb1b37c488813e05505413b5c119c1894` |
| 9 | `lemma` | [le_expect_nonempty_of_subadditive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/le-expect-nonempty-of-subadditive.md) | 80 | `result-track:2e13ef9a6c3f20b5a9b7f3dcf8ff76dcf6f666ddaf338b3c5c2173bbe781e1e8` |
| 10 | `lemma` | [le_expect_of_subadditive_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/le-expect-of-subadditive-on-pred.md) | 89 | `result-track:43755d7f079cfc725809d866a5c277628605bb3b96f0e4e68aa5bdc46cf19dc7` |
| 11 | `lemma` | [le_expect_of_subadditive](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/le-expect-of-subadditive.md) | 100 | `result-track:79410996228478f922829cd591a797e9c5c2995fe3b9474fef9b6559f04988da` |
| 12 | `lemma` | [expect_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-pos.md) | 114 | `result-track:65aba9df13d7ba32d7723532c322b4e27409e69558773dcd72f14cce4f5927fb` |
| 13 | `lemma` | [exists_lt_of_lt_expect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/exists-lt-of-lt-expect.md) | 125 | `result-track:e23eafe5b75e965467681425d663bd38851076faad236eb7d536782cc247bbce` |
| 14 | `lemma` | [exists_lt_of_expect_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/exists-lt-of-expect-lt.md) | 128 | `result-track:e663c2030630bfc70bd755c62acf100c4dd18f1a1d6cfce86e5d9d69d29f4295` |
| 15 | `lemma` | [abs_expect_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/abs-expect-le.md) | 136 | `result-track:459860efcb5034a4abe0b3baa996cce8c07642f272ee326e9e5fbf1ef2b09f93` |
| 16 | `lemma` | [expect_mul_sq_le_sq_mul_sq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-mul-sq-le-sq-mul-sq.md) | 146 | `result-track:8b2186333bbe309c9ef01122cd4b3395fc473e149118c3d7f88b7340b0860cd7` |
| 17 | `lemma` | [expect_eq_zero_iff_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-eq-zero-iff-of-nonneg.md) | 163 | `result-track:0f67497285af22751fb795d45f1d3c0271e1b810f76cb91888dda545b1774db9` |
| 18 | `lemma` | [expect_eq_zero_iff_of_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/expect-eq-zero-iff-of-nonpos-source-edition-2.md) | 166 | `result-track:e2d235db16372860ca33569cc35d9d66f1835846cfd457ecf59b790eaa34570a` |
| 19 | `def` | [evalFinsetExpect](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/evalfinsetexpect.md) | 181 | `declaration-track:812f091c9876dc39d70e380f7d80dbe045069985f304dfb53aa2669d05b59461` |
| 20 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/example-source-edition-3.md) | 210 | `declaration-track:68d8bc89ffce22c98be19afc65adc36aa893ccc254b48984bdeb97b4b7da9ecc` |
| 21 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/example-source-edition-5.md) | 211 | `declaration-track:9c99e859b2a61ef3e3248296be1de1f954b5dfedcb74d282f627f3f023cb28b5` |
| 22 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/example.md) | 212 | `declaration-track:3f4551a1744c3c893797f327516f4d8c419b07b6018f5b2b0868dbf454850482` |
| 23 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/example-source-edition-2.md) | 213 | `declaration-track:4b5c5c1f8c522aad673922482453b18bd8ecd9e451d07a95402a5a4f7f461936` |
| 24 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderBigOperatorsExpect.lean/declarations/example-source-edition-4.md) | 214 | `declaration-track:764a4342b784157953c2b895dda570888cd78a177548a7f0ee988dd940f5acdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02ea640467f7662d2ce551752aa40f26c82fb5658286349ebb71e6fc18fe9851 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant1ad5f75702d3eb8fff9fc1f5fbd4b7cb2781f45e114a70462552f185c78d1177.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Expect/Variant1ad5f75702d3eb8fff9fc1f5fbd4b7cb2781f45e114a70462552f185c78d1177.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
