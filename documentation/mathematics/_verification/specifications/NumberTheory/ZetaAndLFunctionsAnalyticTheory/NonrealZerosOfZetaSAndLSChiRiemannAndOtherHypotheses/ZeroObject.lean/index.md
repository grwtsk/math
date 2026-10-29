# Verification target: Zero Object

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2994d2bed9d51eaff0ce223228f80d3e56b42dc8",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2994d2bed9d51eaff0ce223228f80d3e56b42dc8`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zeta_order_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zeta-order-finite.md) | 27 | `result-track:a6e1a4a5f9096fc1c8daf133cfd9ea2b87c11804c461bdb1623fa95af368562a` |
| 2 | `theorem` | [zeta_multiplicity_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zeta-multiplicity-pos.md) | 37 | `result-track:cf25a57dd7ca093761cb9caf3518a0fa2a5dc691df76357610e5fb808f821d84` |
| 3 | `theorem` | [analytic_conj_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/analytic-conj-conj.md) | 47 | `result-track:e8ea14d001ae94ae573ffca772b3cc937c20a5f3b09e9d0bc4bb8d2e8391c755` |
| 4 | `theorem` | [order_conj_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/order-conj-conj.md) | 56 | `result-track:c3a6c22b99130d76c4397945cc1b1dcc0cd9e5ccbc2ec4a21e0c776a760b46c7` |
| 5 | `theorem` | [zeta_order_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zeta-order-conj.md) | 71 | `result-track:324699f4564d6ceee832270fedbd6c2d8c5948c7d2214422290113b1543193cd` |
| 6 | `theorem` | [completed_analytic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/completed-analytic.md) | 76 | `result-track:952bb2ec24c1eab53a717c819b5c867e2935a5d657fff96965c740695d198324` |
| 7 | `theorem` | [zeta_order_completed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zeta-order-completed.md) | 86 | `result-track:0adfcfef002c07f04a0984398aad89b7420924bc4d9b899d1d907dd04a81b7d7` |
| 8 | `theorem` | [zeta_order_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zeta-order-reflect.md) | 100 | `result-track:1ffbec76fd0a2e4b6145c0df6d53861e737ca0b5cc56aaf3e47a3776168012b5` |
| 9 | `def` | [ZeroPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zeropoint.md) | 116 | `declaration-track:de5ee46b161707900197a093b721548d0d381d160ba9b88b36af5dd2ab5ae1dd` |
| 10 | `theorem` | [point_nontrivial](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/point-nontrivial.md) | 120 | `result-track:3aeb95a7716ad07e3a6b66dbfb68c80130e84677c9299144d790c0aa2d5f5c9c` |
| 11 | `def` | [multiplicity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/multiplicity.md) | 134 | `declaration-track:86aee0f89c5031df4d94face2df70ed3a08acf243a27793c7ff351ac5309a1d0` |
| 12 | `theorem` | [multiplicity_positive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/multiplicity-positive.md) | 137 | `result-track:7434d438a9af42ce843b3a53f56032ca29a9a31862d6d09a5f5170a9c882a489` |
| 13 | `def` | [ZeroOccurrence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zerooccurrence.md) | 141 | `declaration-track:6a8724f876042b9ebc918f605b721528e04878f3315eb1f2bee8b2ec3bce8d58` |
| 14 | `def` | [conjugatePoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/conjugatepoint.md) | 144 | `declaration-track:89a0bc7ab57518dbf053fc4ffef8b213ce524a3d65850a89c946a2a5795174d1` |
| 15 | `def` | [reflectPoint](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/reflectpoint.md) | 148 | `declaration-track:a0167e1e4af9fc0e07241945da67f284bb5282aad9acfeb987c75a52330b898c` |
| 16 | `theorem` | [conjugatePoint_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/conjugatepoint-involutive.md) | 154 | `result-track:2a3f4b6d2bd40d625ca81b2b3e17791569eb6e44b794c7408547745ae032efa8` |
| 17 | `theorem` | [reflectPoint_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/reflectpoint-involutive.md) | 160 | `result-track:cae563515452492297e85e01d045fb1c8fb5664872fa0618619081767416eb3d` |
| 18 | `theorem` | [multiplicity_conjugate](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/multiplicity-conjugate.md) | 166 | `result-track:7bec7594bfcb4ba0fdb0fe7d0fef8a7f6f85db1cc626d14b153fed2fbd5d48b3` |
| 19 | `theorem` | [multiplicity_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/multiplicity-reflect.md) | 171 | `result-track:da70ce3c265cee5bc0d0984f641c4508e0a4fe92078053390c1f947cd1f131b2` |
| 20 | `def` | [conjugateOccurrence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/conjugateoccurrence.md) | 176 | `declaration-track:3c02ee1427d7eb2651725ef6f61a4583c3b1d0e1e1f6950c7579403f9714b0c9` |
| 21 | `def` | [reflectOccurrence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/reflectoccurrence.md) | 180 | `declaration-track:5e2299d9d2ae1242f29aa498f97d988530f4bb48c9e219ab974932f20e68abc9` |
| 22 | `theorem` | [conjugateOccurrence_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/conjugateoccurrence-involutive.md) | 184 | `result-track:bdf8f4b5da6a025e2d7ac364281d119162ad0f872fcaf73c25bc16d5e8f1f6e1` |
| 23 | `theorem` | [reflectOccurrence_involutive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/reflectoccurrence-involutive.md) | 191 | `result-track:86fbe63c7864c0478ff67219c0de6f8a5fd6e9da8e0d0b6bce7f1d9bd7f41d2d` |
| 24 | `def` | [conjugateEquiv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/conjugateequiv.md) | 198 | `declaration-track:210cd521bed953e70c432d73f89ed0dc50f3053a2fde026609a7b3a7c4eebf10` |
| 25 | `def` | [reflectEquiv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/reflectequiv.md) | 202 | `declaration-track:12f3d411d93724c138fa0ed5714656b7206fcee2f108f189797b750b7658d823` |
| 26 | `def` | [shiftedValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue.md) | 206 | `declaration-track:1f2d6e65efca8b6a6e7e681d20dfe21d997eab0c0b8717a6b3ab28a8340cc461` |
| 27 | `theorem` | [shiftedValue_conjugate](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue-conjugate.md) | 209 | `result-track:dc0572418330c72e25c16339b3a9e0ff54bc5f07d8d4b2b6c27fd031fb1d5e33` |
| 28 | `theorem` | [shiftedValue_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue-reflect.md) | 214 | `result-track:2f46ec1d5d3afc887ad08161524664f4898e16bf34fbe0db9b3654357ed0a211` |
| 29 | `theorem` | [shiftedValue_strip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue-strip.md) | 220 | `result-track:5fb01b25778a861b16a71c587fa81837caed0be8905148a0b8ef8e108e722002` |
| 30 | `theorem` | [shiftedValue_ne_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue-ne-half.md) | 226 | `result-track:0c6033f83a7602d18e111f9a2fb22aa960a480109ff90c0ac95d958a8f4af88a` |
| 31 | `theorem` | [shiftedValue_ne_neg_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue-ne-neg-half.md) | 234 | `result-track:46bcb7cf0ea883704d7f4da969c4b0aafeb3622204e2ca1cf5f4421fa35e665b` |
| 32 | `def` | [RealZeroExclusionObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/realzeroexclusionobligation.md) | 242 | `declaration-track:9df5f7cbb3414207b4532e594e16dcbcc6e9b334f049c5fc40894c60b8a3bf95` |
| 33 | `theorem` | [shiftedValue_im_ne_zero_of_realZeroExclusion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue-im-ne-zero-of-realzeroexclusion.md) | 246 | `result-track:d2285e8e2f31f0ce51682085385b4c519f9ded41bc6942dde9f234d876ba02f5` |
| 34 | `theorem` | [shiftedValue_ne_zero_of_realZeroExclusion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/shiftedvalue-ne-zero-of-realzeroexclusion.md) | 257 | `result-track:721203dd66eaf6102a48442a736a4ba25c24349d0675be41f23f7b41ff7173f6` |
| 35 | `def` | [MultiplicityAndSymmetryObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/multiplicityandsymmetryobligation.md) | 265 | `declaration-track:87fc343e7872dbccdb11eb39630b4e7a70c8bea4405c99d95107f1c58ccf22b9` |
| 36 | `theorem` | [multiplicity_and_symmetry](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/multiplicity-and-symmetry.md) | 282 | `result-track:c27a673d71fb6700465fe1427b7f1b9c39aac4f2021623e6945eae586046ae07` |
| 37 | `def` | [ZeroObjectAdmissionObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/zeroobjectadmissionobligation.md) | 292 | `declaration-track:c004b394a15e070b1e83d7d43c11c5c4395fae43fa7e208597e9a2a3caa14278` |
| 38 | `theorem` | [admission_of_realZeroExclusion](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/admission-of-realzeroexclusion.md) | 297 | `result-track:a4d746b6e5df98d019ae492763a2cf0f60fcc2b7ec453d6415114934d36e256d` |
| 39 | `def` | [pairedEtaTerm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/pairedetaterm.md) | 302 | `declaration-track:86b69cfa49f8afff4725877168edec8da3732dfc326b8f88304ffee4306da744` |
| 40 | `theorem` | [pairedEtaTerm_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/pairedetaterm-pos.md) | 306 | `result-track:2edad15bbc2c4a9acb630b6782f586c93ae9066fb1e0648046d98a938dec27d3` |
| 41 | `theorem` | [pairedEta_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/pairedeta-summable.md) | 312 | `result-track:db93964eecefc1960522be1b11d7d781cecfd10f2d5c357a34df92789ccfed30` |
| 42 | `def` | [PairedEtaPositivitySummabilityObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/pairedetapositivitysummabilityobligation.md) | 331 | `declaration-track:dc6caf01991ea2f6f1e50706970dfbd1cad721d4b4b70c2e4a04d2f6ca4083ac` |
| 43 | `theorem` | [paired_eta_positive_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/paired-eta-positive-summable.md) | 335 | `result-track:6d3776f934f1f5abab3960f8716c80a7bdfa0f4a4ef406437c896c78ec28fefa` |
| 44 | `def` | [PairedEtaIdentityObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/pairedetaidentityobligation.md) | 341 | `declaration-track:7759ea6fb68f064a06d6cda61cfe280aa67904743d0b82dec14731bf6777b01c` |
| 45 | `theorem` | [real_zero_exclusion_of_paired_eta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/real-zero-exclusion-of-paired-eta.md) | 347 | `result-track:5666df3e0a385976895e9241b58d2284479fa63c0447a419ff7b7c85dcfde056` |
| 46 | `def` | [PairedEtaReductionObligation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/pairedetareductionobligation.md) | 357 | `declaration-track:47558dd0920efc4e43d6e5202a632938bfdd370d53d6f9cbfdfd6c8aeb1f4499` |
| 47 | `theorem` | [paired_eta_reduction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZeroObject.lean/declarations/paired-eta-reduction.md) | 361 | `result-track:6a9a75ed3c0992f26ffb43ce9f135c73d62addfdb4a77b2f116b2a94b24a6d31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=636eafbbe926f6cff07e0cab85d265359b5208d71bf3868437452a0edde45a5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ZeroObject/Varianted0b85eb4e62706b0882045ea4bf012eb0e85fa1ae82a1d88d9796adf1a0f353.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
