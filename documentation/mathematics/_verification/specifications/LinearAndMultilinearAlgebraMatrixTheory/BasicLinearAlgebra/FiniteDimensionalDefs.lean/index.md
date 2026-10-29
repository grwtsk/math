# Verification target: Finite Dimensional Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caa6ad026ddd6ee5928b7888495f457685a51f27",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caa6ad026ddd6ee5928b7888495f457685a51f27`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.Free` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional-source-edition-2.md) | 70 | `declaration-track:1c488f13fc81f3a937866c89422d73ece29d87398e1ce50af53143d8064d611c` |
| 2 | `theorem` | [of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/of-injective.md) | 80 | `result-track:ae319cebcaa9b2b43aa9156f2a499db8f3d44e9daa9d4700bc0c172efc17b551` |
| 3 | `theorem` | [of_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/of-surjective.md) | 85 | `result-track:d426d7400ecdee462e304b7ac0ad34565bb7456bf9645d4f61e2aa463b6f1e82` |
| 4 | `instance` | [finiteDimensional_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional-pi.md) | 91 | `declaration-track:6a390b38f1efdc626c12bb60b4421cf9fb0229e77ce41774f7458619d9e66ce0` |
| 5 | `instance` | [finiteDimensional_pi'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional-pi-source-edition-2.md) | 94 | `declaration-track:ef5bc46cf4b94db212ca3fd02a536acc870d2abd8cbbe6a8101a8e58fd1977bf` |
| 6 | `theorem` | [of_fintype_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/of-fintype-basis.md) | 101 | `result-track:d8acebb359393f0ebb9c4635724978f146dcfa7802eac01999ec7ce2d5654e82` |
| 7 | `def` | [fintypeBasisIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/fintypebasisindex.md) | 105 | `declaration-track:8bd222a08a5d98e4cafd181994b2010185616fe129d634ae0272cfe9835445a7` |
| 8 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/instance.md) | 111 | `declaration-track:0824a7bd3f976a17c44f2777300fcb0cc337752b3aa2fe790993b6061b65fd04` |
| 9 | `theorem` | [of_finite_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/of-finite-basis.md) | 116 | `result-track:88ba95c4b4de20de0e38965888e9c7fe5d00be38ae32e0ab71cf50ac4f52d115` |
| 10 | `instance` | [finiteDimensional_submodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional-submodule.md) | 125 | `declaration-track:9cca75cb3f1e8a00d2e6a4fe8137a440105f31def8a608ca6ba79dfdcb37480d` |
| 11 | `instance` | [finiteDimensional_quotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional-quotient.md) | 130 | `declaration-track:fb1d57c445a3b5dcce53ec5e0784486008c32bfc2362f3b8c44ce62010c854fc` |
| 12 | `theorem` | [of_finrank_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/of-finrank-pos.md) | 134 | `result-track:d7cfbf22ef7237f91e11cf74d04e9d59bc13ebff87fd1f06e0def732d268463d` |
| 13 | `theorem` | [of_finrank_eq_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/of-finrank-eq-succ.md) | 137 | `result-track:bdb8f51b339402d64285b335f6baa280f67672f9f57bcd803975fc523f42cf96` |
| 14 | `theorem` | [of_fact_finrank_eq_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/of-fact-finrank-eq-succ.md) | 143 | `result-track:4585a86d302725405b4d045d09c2ddedcd0b07377cfc32c3bc3f8ce6692a94da` |
| 15 | `theorem` | [finrank_eq_rank'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finrank-eq-rank.md) | 156 | `result-track:55956bad89eb4ee31a2022d7e61513e894a8fc5dfd5fb2d0ffffebf6f6095cfd` |
| 16 | `theorem` | [finrank_of_infinite_dimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finrank-of-infinite-dimensional.md) | 161 | `result-track:ebc9653f494800afc69fea23955e7c98947c2436b11ded168a9d6e54e5640b88` |
| 17 | `theorem` | [finiteDimensional_iff_of_rank_eq_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional-iff-of-rank-eq-nsmul.md) | 164 | `result-track:e079034a31f12a197a1b2cf4ae496dc86ff6cbe3e598a646825b034577bbc387` |
| 18 | `theorem` | [finrank_eq_card_basis'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finrank-eq-card-basis.md) | 171 | `result-track:e0658a9ccb94aef2c1cf8513f3b19d2e4adc452c93e26b043cdbc73d92e90d13` |
| 19 | `instance` | [finiteDimensional_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional-self.md) | 184 | `declaration-track:c58c33b7b85c23c40389c0334ef02508b802f1163e7e417b6fdaf492aa0e0d44` |
| 20 | `theorem` | [span_of_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/span-of-finite.md) | 187 | `result-track:6318399749f36b88f8d6a317d4324090a05f0797d077d65a2be2b4098bb3eab3` |
| 21 | `instance` | [span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/span-singleton.md) | 191 | `declaration-track:133e60b08e9d8f57e40da2e51e938aaa35e5be708ba20bc4085743327027a025` |
| 22 | `instance` | [span_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/span-finset.md) | 195 | `declaration-track:8e0be5c9237bcc7373cfa94a19a618311c024346033c2dc1caac231d5d7d819c` |
| 23 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/instance-source-edition-2.md) | 199 | `declaration-track:a084f682fb40f7ff5b847dd2b0b8d697a32ad20007af4e69c0204e19a5a77969` |
| 24 | `theorem` | [trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/trans.md) | 210 | `result-track:1a8555fd200cca2a4192656220f7afb4cb3a68a1bdafd34bd550f9eea0e06d68` |
| 25 | `theorem` | [fg_iff_finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/fg-iff-finitedimensional.md) | 224 | `result-track:a76f28318bd82949b8173a33a8e9908333088ac2b05015eda000106e6df471f5` |
| 26 | `theorem` | [finiteDimensional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteDimensionalDefs.lean/declarations/finitedimensional.md) | 237 | `result-track:041ce2145aaa332410280affa4e542ad7f426f0a25175e4309a27fdfe618d400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dc6085117bd49089abce12919fa042f311e4434ec7048cd23b56b2a49ed9036 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variantda677fe9282483c08ed5b5aa5d34429f3525133da27836a70cac034610514ad8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
