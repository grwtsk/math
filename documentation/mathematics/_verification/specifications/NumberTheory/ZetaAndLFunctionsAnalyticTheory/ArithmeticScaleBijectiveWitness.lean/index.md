# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticScaleBijectiveWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5bb123b6c4312d063b71f17f3c157f4314dacdf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ArithmeticScaleBijectiveWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5bb123b6c4312d063b71f17f3c157f4314dacdf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ArithmeticScaleBijectiveWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ArithmeticScaleBijectiveWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAbelianGroup.Finsupp` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeIndex](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/primeindex.md) | 35 | `declaration-track:68eab4e98d2bd1def00e7ae970c000d5d1a2873d61540879059c56b15f25a133` |
| 2 | `abbrev` | [PrimeExponentLattice](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/primeexponentlattice.md) | 38 | `declaration-track:199508813f4574150006a2ff673ae02939bbe693461e32c0663493c005229287` |
| 3 | `abbrev` | [ArithmeticLogScale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/arithmeticlogscale.md) | 41 | `declaration-track:194cbcfb277d60e11a987f2735b16c433068811518927ea2fc080bf820306e18` |
| 4 | `abbrev` | [PAdicScaleFamily](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/padicscalefamily.md) | 44 | `declaration-track:2c8cdf62e84228ad10c1d19ee2f3b03efd1d02aa6e3c663e4e938b4b33f084c9` |
| 5 | `def` | [logarithmicToPAdicFamily](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/logarithmictopadicfamily.md) | 47 | `declaration-track:7c72e90bd873fad019c123486f461262ca9855ccc165040e468342e13845019b` |
| 6 | `theorem` | [logarithmicToPAdicFamily_bijective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/logarithmictopadicfamily-bijective.md) | 52 | `result-track:a6099fce7df19305b406bfb0705fb62ece3c31dfbd4f184163a6b03107e36a1b` |
| 7 | `def` | [pAdicExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/padicexponent.md) | 59 | `declaration-track:a603b9f8f1ab00244c3f9d846e720a1e86f24f79422cc77225bcd682f3d64a22` |
| 8 | `def` | [pPrimaryEmbedding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/pprimaryembedding.md) | 63 | `declaration-track:00dbd8ca0548e39b76c88835aa299e9ae32caa236045e113baede4cc85f1b0f0` |
| 9 | `theorem` | [logarithmicToPAdicFamily_pPrimaryEmbedding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/logarithmictopadicfamily-pprimaryembedding.md) | 69 | `result-track:6dbb347d03d72b71d150b2043e64f5f894079580f2e7b0640fdb2812dc531f58` |
| 10 | `theorem` | [pAdicExponent_pPrimaryEmbedding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/padicexponent-pprimaryembedding.md) | 80 | `result-track:0036419665063a363279b0461a9f2ec01d17ba071b9b554726c80ab157f21ff4` |
| 11 | `theorem` | [pAdicExponent_comp_pPrimaryEmbedding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/padicexponent-comp-pprimaryembedding.md) | 88 | `result-track:3c9026128e4a2a2aa741ce7fad5a244156ecd04c47eb05d5524b47b2ba218a3d` |
| 12 | `theorem` | [pPrimaryEmbedding_injective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/pprimaryembedding-injective.md) | 96 | `result-track:429fde4ed5be313b20f51a8e38ceeb8e4a56c5847115ba448cc7abad5f8b394b` |
| 13 | `theorem` | [pAdicExponent_pPrimaryEmbedding_of_ne](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/padicexponent-pprimaryembedding-of-ne.md) | 104 | `result-track:086d10f936bcb76b55bb93a2342a44da44ba6ebd096496b5b643658c9b4d35d1` |
| 14 | `theorem` | [logarithmicToPAdicFamily_apply](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/logarithmictopadicfamily-apply.md) | 114 | `result-track:613fde229e0dca8ba7b9ce06015711190041f380e8278c4e13b1e838fc441c13` |
| 15 | `theorem` | [ext_of_pAdicExponent_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/ext-of-padicexponent-eq.md) | 121 | `result-track:159bda560f5e3eff1ee2b159887e28ed408c5089a0e9a4598784ec110cb05809` |
| 16 | `def` | [archimedeanBasisHom](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/archimedeanbasishom.md) | 131 | `declaration-track:332c7e22a4335728377aa156aa8b3c87f8a489a13369a108c7522b340157d2da` |
| 17 | `def` | [archimedeanLogRealization](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/archimedeanlogrealization.md) | 139 | `declaration-track:997c0d68a77f28e58e7298965626e46f9f9917656ba00fb2b56cbf6fea835409` |
| 18 | `theorem` | [archimedeanLogRealization_apply](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/archimedeanlogrealization-apply.md) | 144 | `result-track:18f7dce6fa1019e6bd537a6eb494c735242f7687b9d887b9780cc372dc49b7b3` |
| 19 | `theorem` | [archimedeanLogRealization_pPrimaryEmbedding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/declarations/archimedeanlogrealization-pprimaryembedding.md) | 152 | `result-track:a463c05097de0883a08d6a3cf4b0040e0768893be8c9a235930d61ea8e5b1be3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2b235a22fc1ec80e47dfce7e59ad5725e053d0c8a0e4ce37b4fa72f7f07f44a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ArithmeticScaleBijectiveWitness.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ArithmeticScaleBijectiveWitness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
