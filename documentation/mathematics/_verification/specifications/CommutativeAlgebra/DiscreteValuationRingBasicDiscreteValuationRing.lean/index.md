# Verification target: Discrete Valuation Ring Basic Discrete Valuation Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5adee322a4cf6c24bc903241e020b7fd09cc8224",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5adee322a4cf6c24bc903241e020b7fd09cc8224`.

Source path: `GRWTSK/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.LocalRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AdicCompletion` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DiscreteValuationRing](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/discretevaluationring.md) | 54 | `declaration-track:80b69a647712d8ef11456b828888305f905e77fed939d0bc42c17bbb9d6cb0ac` |
| 2 | `theorem` | [not_a_field](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/not-a-field.md) | 63 | `result-track:40c1454483e31d650678718e12049af5e4728fda4fc6037c25344999cf29def2` |
| 3 | `theorem` | [not_isField](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/not-isfield.md) | 68 | `result-track:edb41051924e2f35f14c5578baf68188aa7e98d95e9dec2bb59ffa7202d285f7` |
| 4 | `theorem` | [irreducible_of_span_eq_maximalIdeal](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/irreducible-of-span-eq-maximalideal.md) | 76 | `result-track:24884a33ef3c5682ce46742eb7ed14babb59f925ccac5e6f4ef5cfe04b96b11f` |
| 5 | `theorem` | [irreducible_iff_uniformizer](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/irreducible-iff-uniformizer.md) | 94 | `result-track:a7f1fccc8b90c0d54be9e42b03fe0eee88fc686d3e19efedf95e09c9ac01c416` |
| 6 | `theorem` | [_root_.Irreducible.maximalIdeal_eq](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/root-irreducible-maximalideal-eq.md) | 100 | `result-track:331e2de42a572634dbb8f45304ae6ba93d6438674c607610945907b8b3fa2253` |
| 7 | `theorem` | [exists_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/exists-irreducible.md) | 108 | `result-track:5adfd530890802772ebd0136fb634e54c77901ec148b709f74fe7d0abba297e6` |
| 8 | `theorem` | [exists_prime](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/exists-prime.md) | 114 | `result-track:e9f5cf4361fb129b11ee0ee1e9e8dac30c9169e571d1d6cdeb184e52345fb87e` |
| 9 | `theorem` | [iff_pid_with_one_nonzero_prime](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/iff-pid-with-one-nonzero-prime.md) | 119 | `result-track:f218287953c88eb7950b8a0950c1bfa46c3f19bfd5bf761f453abbe35cc8f54b` |
| 10 | `theorem` | [associated_of_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/associated-of-irreducible.md) | 149 | `result-track:762c1e1f576928dc94ee8c7407dd826c031d468a6433be63d3279f4afe22023f` |
| 11 | `def` | [HasUnitMulPowIrreducibleFactorization](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/hasunitmulpowirreduciblefactorization.md) | 162 | `declaration-track:4f3611ab3184f669566d460a018b60a50c29e92765b2b52c1faed4befc6d7c2d` |
| 12 | `theorem` | [unique_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/unique-irreducible.md) | 170 | `result-track:efdb86c5fda6c63c33fde677113fd67c5822cd0a97927dae1cdd6654de857b56` |
| 13 | `theorem` | [toUniqueFactorizationMonoid](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/touniquefactorizationmonoid.md) | 199 | `result-track:0e7e8d5cf2b61607e0ea55899d7266ee35185fb33f0f56fafe5221af09cbd732` |
| 14 | `theorem` | [of_ufd_of_unique_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/of-ufd-of-unique-irreducible.md) | 228 | `result-track:6244ef8f0aaa7cb430d9c9bf6a380258b2c13b942a9f53af41fd4206ea28be5e` |
| 15 | `theorem` | [aux_pid_of_ufd_of_unique_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/aux-pid-of-ufd-of-unique-irreducible.md) | 251 | `result-track:ee58d6a91156c22435c4026b4a4d865cde8e33c1b872594a232fac0ce9ce5ba0` |
| 16 | `theorem` | [of_ufd_of_unique_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/of-ufd-of-unique-irreducible-source-edition-2.md) | 287 | `result-track:88f0260c8f26aadac7a3c3ef390dcd63fbe45385d8b683f9696bd28fc1d9cc97` |
| 17 | `theorem` | [ofHasUnitMulPowIrreducibleFactorization](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/ofhasunitmulpowirreduciblefactorization.md) | 311 | `result-track:74d89b722f389b00767967ea6177c87772e53562613f69fcb4b34f8fb970d7b5` |
| 18 | `theorem` | [associated_pow_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/associated-pow-irreducible.md) | 325 | `result-track:aa64e0e0b2674eb509596cc427863ee21390b015a47c17d93cdf713d13228efb` |
| 19 | `theorem` | [eq_unit_mul_pow_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/eq-unit-mul-pow-irreducible.md) | 344 | `result-track:5ec1bd306f27cbc555ae2d55b1a1b4d8d0e7e0e2305c60d6c723b3aa00aa2ff3` |
| 20 | `theorem` | [ideal_eq_span_pow_irreducible](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/ideal-eq-span-pow-irreducible.md) | 354 | `result-track:d7b10d1c1df4a258d7ebc4db4d380a513d1153a377cdb9abe877a3157dd8e276` |
| 21 | `theorem` | [unit_mul_pow_congr_pow](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/unit-mul-pow-congr-pow.md) | 366 | `result-track:605ef9d8b49d2ae07e831df19fd33ad93f4daa126df387284ae187021beaca14` |
| 22 | `theorem` | [unit_mul_pow_congr_unit](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/unit-mul-pow-congr-unit.md) | 382 | `result-track:471643c2989bce93ad3a71866d3a53fbe46c9f10e13e7580d525e26905bdfec0` |
| 23 | `def` | [addVal](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval.md) | 399 | `declaration-track:4ca579dec7b71a7ae5c61c2e968682e5db0882240313d913235c51042455341b` |
| 24 | `theorem` | [addVal_def](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-def-source-edition-2.md) | 404 | `result-track:6a8f3146651ec0014ce5f31fcb83c295f3cbff8f76b5f6100b2b09cbfaedd9cf` |
| 25 | `theorem` | [addVal_def'](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-def.md) | 412 | `result-track:035c0c9c81db2c16ae8dcb7af35ced13156431a8db468fd028e30cf9dcb38b28` |
| 26 | `theorem` | [addVal_zero](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-zero.md) | 418 | `result-track:900eb375934c35748a065c86a0a27e9790a65263a4e7752f8cea5af2043fd5e7` |
| 27 | `theorem` | [addVal_one](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-one.md) | 423 | `result-track:d41d844e1b3d3714f6b294a68f278609a30076a0cd3ca4ff3dbf1d01e3a20544` |
| 28 | `theorem` | [addVal_uniformizer](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-uniformizer.md) | 428 | `result-track:a28aecb59a7bbe6a7ebdc9ab16b4afc4c5595774bec7a4a2b59e314c4115e3aa` |
| 29 | `theorem` | [addVal_mul](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-mul.md) | 434 | `result-track:0f22135540cc3bc00def7de412f5fa1f09dd44ea57c38366171d7c3d4858ecd2` |
| 30 | `theorem` | [addVal_pow](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-pow.md) | 439 | `result-track:406c1ff40c4f9e1db9596896a5c505fd25a4365ec167288cfabe72b9f7be5105` |
| 31 | `theorem` | [_root_.Irreducible.addVal_pow](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/root-irreducible-addval-pow.md) | 443 | `result-track:4e9d448529b600c864e5d89adbdcf9c7eb883f67a44384edaccddf20e564f6ed` |
| 32 | `theorem` | [addVal_eq_top_iff](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-eq-top-iff.md) | 448 | `result-track:8e125ae4f46e1fe1e43041f2a6a302c2802dd1619e99d56fbc011b5d861b5da8` |
| 33 | `theorem` | [addVal_le_iff_dvd](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-le-iff-dvd.md) | 461 | `result-track:a4c6d999657f80024c2d2bfa7d8dabf34968a4c9752098939998181979bdc205` |
| 34 | `theorem` | [addVal_add](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/addval-add.md) | 475 | `result-track:1caa0743c7833b356541931410496f485d4fb9a6e21837fa1b683a8bae24592b` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DiscreteValuationRingBasicDiscreteValuationRing.lean/declarations/instance.md) | 481 | `declaration-track:72eb84311b5722430965af7df96dd4a365ec20553ec1d97771fb91971cf3e799` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f25f81fc843d1cf98f75120847795840dba5b1dcbdcf628a76b59fcde1fab2f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
