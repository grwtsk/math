# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74d56ea401b2c7d48b4d9eb467d28fca909e75c0",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74d56ea401b2c7d48b4d9eb467d28fca909e75c0`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Finsupp.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primeindex.md) | 41 | `declaration-track:949eeecaba713806708d66aee49523c52ab767bfbd25f43b33f44707c95138e2` |
| 2 | `abbrev` | [PrimeExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primeexponent.md) | 44 | `declaration-track:ba9bbf59bce3e501e5c2da8b3ff8dc20841a5c1fea6bcb1eff8c992379abbf42` |
| 3 | `def` | [primeCoordinate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primecoordinate.md) | 47 | `declaration-track:b21fa2ec06218d880a3cb5cbaaaa9ddb78fdd0c7669cdf9f96221801d4698e2a` |
| 4 | `theorem` | [primeCoordinate_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primecoordinate-apply.md) | 51 | `result-track:11e6faf617c2faa6be045686e8bcf696d2ad2c9b3c77497eb594d21385da8b81` |
| 5 | `def` | [primeProjector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primeprojector.md) | 56 | `declaration-track:123379abac4bb16a8f345ef22549b380417a30f5eda4d7779811978bd41b55ab` |
| 6 | `theorem` | [primeProjector_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primeprojector-apply.md) | 60 | `result-track:0c98353bf33365b619c6b618a91a1ffa1648c166616cd0c8346ac2ba253314e4` |
| 7 | `theorem` | [primeCoordinate_projector_same](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primecoordinate-projector-same.md) | 65 | `result-track:4da5d0c18a85b46de789abb8b10f576feaec522e0ceb33b0138bcf052931fc62` |
| 8 | `theorem` | [primeCoordinate_projector_ne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primecoordinate-projector-ne.md) | 70 | `result-track:4e6f62144d85e3241024e9886a80e5f017a9cf89edfd7ee7796e636f969deed7` |
| 9 | `theorem` | [primeProjector_idempotent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primeprojector-idempotent.md) | 76 | `result-track:71ae027f9cd25fc66370a5e48beb1bbb61d55a76119a39aac35a4178a1493726` |
| 10 | `theorem` | [primeProjector_orthogonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primeprojector-orthogonal.md) | 85 | `result-track:68595237a9a630f4620ca1633de1d386324f3ae32deedab28aa403d43ad5e31f` |
| 11 | `theorem` | [finite_prime_projector_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/finite-prime-projector-reconstruction.md) | 94 | `result-track:577bdc2ec6a3adbee54a81b30432fdeb78dd33212dbac6e4688cdf4a498390ec` |
| 12 | `def` | [primeLogHom](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primeloghom.md) | 99 | `declaration-track:c385674f5fc89261a4dc0c61df38464ba999a57d6fdba8ff7fa20d23f8594b8c` |
| 13 | `def` | [logRealization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/logrealization.md) | 107 | `declaration-track:bd9d909d07812e9d7468a476aad10c915cb2a588c9e08323415299ae44a7fb7b` |
| 14 | `theorem` | [logRealization_single](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/logrealization-single.md) | 111 | `result-track:3c27440c1dd395281fe5c3d56da5a89cc1e212e49768dd9ef7a992c1bcd775f5` |
| 15 | `def` | [rationalRealization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization.md) | 118 | `declaration-track:6bcf78691c680c87fe647124e669f550e92d90d39acb747368ca17a45b8384f6` |
| 16 | `theorem` | [rationalRealization_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-pos.md) | 121 | `result-track:977dc5410907e6a3ba95b7e458e7d879a1451eda910d839c9bb97374e63cf864` |
| 17 | `theorem` | [rationalRealization_ne_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-ne-zero.md) | 127 | `result-track:6a49c1bbbb73b0d03a0959eed4abd19b1eec155fee266aafdd135a9d4b0224d6` |
| 18 | `theorem` | [rationalRealization_add](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-add.md) | 132 | `result-track:57030e8bdba157dca549e14189d76a455ce77c21f0ea55a818731fe8ea23021f` |
| 19 | `theorem` | [rationalRealization_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-zero.md) | 140 | `result-track:7a552bc0ae8ccd5aabdd1ff60b4fb018553a8bf3a27f7347f82279950878d09b` |
| 20 | `theorem` | [rationalRealization_neg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-neg.md) | 145 | `result-track:9c7f0ec213600d4b1b73c55a9a394147042ce83ddd3408656b7c82dad7db7e33` |
| 21 | `theorem` | [padicValRat_prime_zpow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/padicvalrat-prime-zpow.md) | 152 | `result-track:2e9f58d40cb12ee6d4ec9d816799da1c3949420a4b7766799ce8eb79db180abe` |
| 22 | `theorem` | [padicValRat_rationalRealization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/padicvalrat-rationalrealization.md) | 168 | `result-track:3e6e673c45147bb76a0ee6c9ec316aae837fd60b8ad21341f21962f3b737a412` |
| 23 | `theorem` | [rationalRealization_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-injective.md) | 187 | `result-track:e9b4202b0b7dde27a375675abdbd06f61c6cf0596402290cd9c54ccc00ce5b78` |
| 24 | `def` | [positiveRationalUnits](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/positiverationalunits.md) | 195 | `declaration-track:245c86919ebd8bd3d2e38abe85d5754a20bd9c5548126c1e3014a5c4f334cdb5` |
| 25 | `abbrev` | [PositiveRationalScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/positiverationalscale.md) | 209 | `declaration-track:5dbc9ae2bd245eff1cc65f59403e5d0cb88797ff2945cbcdf7418a4cce4a0865` |
| 26 | `def` | [positiveRationalValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/positiverationalvalue.md) | 212 | `declaration-track:df4ac5d821adf552d1e7cff24e40681d835d76ae605910d70d3fe43c5a4cc813` |
| 27 | `theorem` | [positiveRationalValue_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/positiverationalvalue-pos.md) | 215 | `result-track:4169da2e13cd846e05149785757a149d96160325b487f20e41bce4d728b50531` |
| 28 | `def` | [exponentToPositiveRational](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponenttopositiverational.md) | 220 | `declaration-track:e62330714e16ac60400056eac7c5960d286b89c04c6973b7b314516814424877` |
| 29 | `theorem` | [exponentToPositiveRational_value](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponenttopositiverational-value.md) | 226 | `result-track:b1e0d5536d0c9a03050e9ea397ddd23ea11249d15648988a9ade992e9fd84367` |
| 30 | `def` | [natPrimeExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/natprimeexponent.md) | 233 | `declaration-track:12e769bf7a8b2b003c11e072eca65678aa4ea09967f6c2f45dd59503e1c653ca` |
| 31 | `theorem` | [natPrimeExponent_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/natprimeexponent-apply.md) | 240 | `result-track:4aa181b0077d71ffc826143a96fbb03da20a8763710a6af937bba42138dd83eb` |
| 32 | `theorem` | [rationalRealization_natPrimeExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-natprimeexponent.md) | 245 | `result-track:a684652b2051dcbcad7862a72b1fe59da256070bed584339faff5764732b9e11` |
| 33 | `def` | [positiveRationalExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/positiverationalexponent.md) | 270 | `declaration-track:00f51e4620636e210a42d5343e191d215c2243baa42a5a8eb3949683cb49abad` |
| 34 | `theorem` | [rationalRealization_positiveRationalExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/rationalrealization-positiverationalexponent.md) | 276 | `result-track:b8d3e1e1e65f00e0b0df3512764efc23f96368bae9fb4b1ed99a123df41ee5f9` |
| 35 | `def` | [valuationCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/valuationcoordinates.md) | 300 | `declaration-track:bf2fc19277b02bd66b86570993a0540d57c2ce5c5c83be0a4e056ac7d35ef6ab` |
| 36 | `theorem` | [valuationCoordinates_exponentToPositiveRational](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/valuationcoordinates-exponenttopositiverational.md) | 305 | `result-track:1e8af9126398d61374f4afeae58929b702e13165d48d52b1f980c5a70c619e25` |
| 37 | `theorem` | [exponentToPositiveRational_valuationCoordinates](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponenttopositiverational-valuationcoordinates.md) | 314 | `result-track:812c463060ebc52af0e58410b90435d3e0c43229f6ea3bdbbab65a21716a4797` |
| 38 | `def` | [positiveRationalPrimeExponentEquiv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/positiverationalprimeexponentequiv.md) | 323 | `declaration-track:3b4d8c3c635939f2088bf16b247a3dff93028db42dbf2a82759ea17fc77aa5c6` |
| 39 | `theorem` | [valuationCoordinates_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/valuationcoordinates-apply.md) | 338 | `result-track:d162c4051273ed5bfaadae8f612d8db2224df26b6dfbfce14daf23652ac9d8ba` |
| 40 | `theorem` | [logRealization_eq_log_rationalRealization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/logrealization-eq-log-rationalrealization.md) | 349 | `result-track:82acf3ff8317dcbe377001afc4806148919e57e12a471758ddacc049d2d32758` |
| 41 | `theorem` | [logRealization_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/logrealization-injective.md) | 362 | `result-track:23fd94e23a72d20a8a9ffa218fb077d07acccdf42349eb9df3e89f990cc33b38` |
| 42 | `def` | [arithmeticLogScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/arithmeticlogscale-source-edition-2.md) | 374 | `declaration-track:54c2d79d5f6ee991f97b472a8d517fb42bebe2af4e43f2fb897f4fcc8a241f29` |
| 43 | `abbrev` | [ArithmeticLogScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/arithmeticlogscale.md) | 378 | `declaration-track:53362a3396828c8a32766d357098825d9ad30f37a2988a0b1a7ef79d934981e7` |
| 44 | `def` | [exponentToScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponenttoscale.md) | 382 | `declaration-track:7bb565c783a08ce829a8a2d0e2bf6b707e8808e6d2af13dcfad264e59f17e6be` |
| 45 | `theorem` | [exponentToScale_coe](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponenttoscale-coe.md) | 388 | `result-track:865c4f47d6323fb48244deb0628feaf3cb38f4112fbfabfde4236523dd7b24e4` |
| 46 | `theorem` | [arithmeticLogScale_existsUniqueExponent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/arithmeticlogscale-existsuniqueexponent.md) | 393 | `result-track:78660a886e882c45de63b4b050457ef59b028f617531850973de59e8edaa00db` |
| 47 | `def` | [exponentEquivScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponentequivscale.md) | 405 | `declaration-track:83e08d3dc33bde86be86d32620e718c8b3e7fb3c921bc3e216439b6599a2d36e` |
| 48 | `def` | [scalePrimeCoordinate](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/scaleprimecoordinate.md) | 418 | `declaration-track:ee93be5fea8cc6d2eda92a09e033ac26acecc28895d135afb7468a33a0ac258f` |
| 49 | `theorem` | [scalePrimeCoordinate_exponentToScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/scaleprimecoordinate-exponenttoscale.md) | 423 | `result-track:cb86c4ba01bd882d3ca2301e8e32b3dfc4c940b01ca8301c713791d8a99dc8e6` |
| 50 | `def` | [scalePrimeSection](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/scaleprimesection.md) | 430 | `declaration-track:4f45779b2682c4c35bf1894cdc7798caa262f837e86b42cc2dc5d9ae985662f6` |
| 51 | `theorem` | [scalePrimeCoordinate_section](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/scaleprimecoordinate-section.md) | 434 | `result-track:0633b18a3e8e99c14060effc8d146ebac45ebb51921088d78db041c82bfca3bb` |
| 52 | `def` | [scalePrimeProjector](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/scaleprimeprojector.md) | 439 | `declaration-track:a18237a95ae37ab6beb12a231ed988380456c677e61665fc1a217dcd043d734f` |
| 53 | `theorem` | [scalePrimeProjector_idempotent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/scaleprimeprojector-idempotent.md) | 444 | `result-track:d606d937fb03bf71affb392432b71bb257846f5abe0e51abde61552eabb9df3c` |
| 54 | `theorem` | [scalePrimeProjector_orthogonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/scaleprimeprojector-orthogonal.md) | 451 | `result-track:2c349e6ebf082e52fbbae47dcb1a58e1b8bab69a3f469a5da27232dba98df2a3` |
| 55 | `theorem` | [finite_scale_projector_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/finite-scale-projector-reconstruction.md) | 458 | `result-track:648d6379cbe0f070c85b896dccbc64628e8837d837d46f735f6760e716389fa7` |
| 56 | `def` | [radialPrimePower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/radialprimepower.md) | 467 | `declaration-track:e4ab5d6d39d88420b4aa7e21df6d1a8aac2a517e2ba75aae18aa7691344ef257` |
| 57 | `def` | [radialRealization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/radialrealization.md) | 472 | `declaration-track:f273c75deca6ff5a2fa8923774878e1a572272966d68021dcdbdb71a9a204634` |
| 58 | `theorem` | [radialRealization_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/radialrealization-zero.md) | 476 | `result-track:b2dd1b7fd424cda53d388f473f67973b4e98cfd3673215f08f9d75352d8a7302` |
| 59 | `theorem` | [radialRealization_add](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/radialrealization-add.md) | 482 | `result-track:058086013c838e6251119f0e338a7cc0efe6162ff9d82a00f9dabb142187134b` |
| 60 | `theorem` | [radialRealization_exponentToScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/radialrealization-exponenttoscale.md) | 490 | `result-track:8241facad68e06c5c0a02c6356c2ec8f7cb1ec3e33a1c7ec84f3169ee23d807b` |
| 61 | `theorem` | [padicValRat_radialRealization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/padicvalrat-radialrealization.md) | 496 | `result-track:b04627b0387004eaae0500499fda724100434097c9e031dd14cea2edfa671e0b` |
| 62 | `def` | [finitePadicNormProduct](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/finitepadicnormproduct.md) | 505 | `declaration-track:2d63ebb3283c8a3bc51ac03549dbb2ad88580ba85568eca3b91aeaa5f50abf5a` |
| 63 | `theorem` | [exponent_product_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponent-product-formula.md) | 509 | `result-track:618446c43e15733dd6bfe4d41cf7773b882259be212aa455ab216f8c6aaad650` |
| 64 | `theorem` | [exponent_log_product_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/exponent-log-product-formula.md) | 524 | `result-track:ae2258f266f7bfab965c327f43292f7774dc924eb456812d23fbbe3e21956731` |
| 65 | `def` | [primeLineEquiv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/declarations/primelineequiv.md) | 532 | `declaration-track:433a8de3b23691772aa74ec44b1cd909ac0d1a85ed5e2d2ffd3c3b5ea4233b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c669e70f15f3812501a729fd4231ac83b711099c3e1179a0b08d96fe16dff75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
