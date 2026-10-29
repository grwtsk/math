# Verification target: Group With Zero Basic Mul Left Inj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eae7dbc860d5a3f8816ec3a500202347698da5c",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb031022dc7e422bd4d36e4a225beffa09ea3842b866fa2604a581bec52848802.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eae7dbc860d5a3f8816ec3a500202347698da5c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb031022dc7e422bd4d36e4a225beffa09ea3842b866fa2604a581bec52848802.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb031022dc7e422bd4d36e4a225beffa09ea3842b866fa2604a581bec52848802.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.OrderSynonym` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [left_ne_zero_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/left-ne-zero-of-mul.md) | 52 | `result-track:601545e54567cbc41c9b1bc2ee520fd2cc432804e8ef3ab296d489ae2a864920` |
| 2 | `theorem` | [right_ne_zero_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/right-ne-zero-of-mul.md) | 56 | `result-track:7c536369eecad82ccdeeebde927cb7b45376b8ccfa3c4f3d90ac1475527e5370` |
| 3 | `theorem` | [ne_zero_and_ne_zero_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/ne-zero-and-ne-zero-of-mul.md) | 60 | `result-track:dca4958f831ca2f742092e5fe42ea3b43b68465f8b43cf3990b20025a8250356` |
| 4 | `theorem` | [mul_eq_zero_of_ne_zero_imp_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-eq-zero-of-ne-zero-imp-eq-zero.md) | 64 | `result-track:9d7c3da0613c3354f2d89bd88d7a2117937e84326ecee75eeae97acba5ed29de` |
| 5 | `theorem` | [zero_mul_eq_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/zero-mul-eq-const.md) | 69 | `result-track:b1580c1a75a42f3df159d1faadad02041141e0c86e63f4927c2dc8ae70714f15` |
| 6 | `theorem` | [mul_zero_eq_const](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-zero-eq-const.md) | 74 | `result-track:893c466a5346f7e3432082f133723c0e71466fed5355f9172bdc5dfad547c5b6` |
| 7 | `theorem` | [eq_zero_of_mul_self_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/eq-zero-of-mul-self-eq-zero.md) | 84 | `result-track:2103c135642384f30d9c795066698973eb6e2f64dc11c795953d7a21095f4588` |
| 8 | `theorem` | [mul_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-ne-zero.md) | 89 | `result-track:43ab23f5863e356c1416c838ad2abb27f77c91799802b5d4f5dfd804ce490e03` |
| 9 | `instance` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul.md) | 97 | `declaration-track:d467acb0a568eaa04b2c9f75a9bf02de70c5af53a30658b5b7058867d1714f95` |
| 10 | `theorem` | [eq_zero_of_zero_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/eq-zero-of-zero-eq-one.md) | 110 | `result-track:ac18b185a0a1891316092700fca9cbd2250281e1a295746fb61ab5b08f01a350` |
| 11 | `def` | [uniqueOfZeroEqOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/uniqueofzeroeqone.md) | 118 | `declaration-track:95d5c63fef21ae8eb49e2f631ae941566b733c1b650da46999ccc9c56d5b9e3c` |
| 12 | `theorem` | [subsingleton_iff_zero_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/subsingleton-iff-zero-eq-one.md) | 125 | `result-track:649ca31be9c56200ba727100346a8c43f5a9956f57f22f122961348ea9c3c8ab` |
| 13 | `theorem` | [eq_of_zero_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/eq-of-zero-eq-one.md) | 132 | `result-track:47fbcf2530b5f2ac73e982beff445fd5b10d935fda31675e8dce7a86189cea73` |
| 14 | `theorem` | [zero_ne_one_or_forall_eq_0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/zero-ne-one-or-forall-eq-0.md) | 137 | `result-track:4c631e902abff55d6bcd1834d55978d1b90f7a500ebcdc46bd9a0391edbbd2ce` |
| 15 | `theorem` | [left_ne_zero_of_mul_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/left-ne-zero-of-mul-eq-one.md) | 147 | `result-track:e0be2d6ed417295f42cbc9600a53ed7fa413ae1eb1ffe48357cdd1cf4b75f55f` |
| 16 | `theorem` | [right_ne_zero_of_mul_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/right-ne-zero-of-mul-eq-one.md) | 151 | `result-track:d6409f01eaff1a5d58657de4108562075f686e2a7836958d02f389289906842c` |
| 17 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-18.md) | 162 | `declaration-track:c866382ee564502a1866cdc65f814a2bd110eaf4bb6839fe0451abb5a470c34c` |
| 18 | `theorem` | [mul_left_inj'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-left-inj.md) | 167 | `result-track:73dd2660b5891a0746b715f210b212cf64b63c885577ef3993329d9c75380f0b` |
| 19 | `theorem` | [mul_right_inj'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-right-inj.md) | 171 | `result-track:6e99631bc0d0db7da67a6ab86372d7dde223c4fb9adb6319be938bf4e7b10a7a` |
| 20 | `theorem` | [mul_eq_mul_right_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-eq-mul-right-iff.md) | 176 | `result-track:b4d611e9ab58095ea357d7fcab129bfe0ecf505c72874f4cbdf32fb133855d05` |
| 21 | `theorem` | [mul_eq_mul_left_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-eq-mul-left-iff.md) | 181 | `result-track:f78d42eb10f4100a4dd9605948c005129382b49a024cc66302a88f972fe23d0b` |
| 22 | `theorem` | [mul_right_eq_self₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-right-eq-self.md) | 185 | `result-track:502307895492902f415d5bf3ae9ff11b241bfb756b219687b26b098855690d00` |
| 23 | `theorem` | [mul_left_eq_self₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-left-eq-self.md) | 192 | `result-track:06bb5039ad9d5887642019c65c83914c3755f324f4a95637ac95556b829c3447` |
| 24 | `theorem` | [mul_eq_left₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-eq-left.md) | 199 | `result-track:74fb280c78960554a547d73cca51cc28243a1f25df98c41c6313ff975c30c6bd` |
| 25 | `theorem` | [mul_eq_right₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-eq-right.md) | 204 | `result-track:14f3994600a21ee7b1838ac0eba049e0c4935db2c9b8dedab7d70b97a636ec6a` |
| 26 | `theorem` | [left_eq_mul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/left-eq-mul.md) | 209 | `result-track:2c6c7728fc6e37fa0ea0fb35dba6bafbcfde9e1b9fbbe0491307dbf385dddc00` |
| 27 | `theorem` | [right_eq_mul₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/right-eq-mul.md) | 213 | `result-track:06be1dfbbf9eea086b8059e4babc1d8ed0a5618abf242a30996533e137f4cf6b` |
| 28 | `theorem` | [eq_zero_of_mul_eq_self_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/eq-zero-of-mul-eq-self-right.md) | 218 | `result-track:848658244c21b304f09749636ccf0b3f9b780ab4372326b285519a70e080f439` |
| 29 | `theorem` | [eq_zero_of_mul_eq_self_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/eq-zero-of-mul-eq-self-left.md) | 224 | `result-track:35d28259a2abbfa6ee75a74bf1fd9b8d49605b5aff50c783564973957e5b5863` |
| 30 | `theorem` | [mul_inv_cancel_right₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-inv-cancel-right.md) | 235 | `result-track:f70bc891cf6a55065c53d49c298142b9e3267a33b1ada8ee65c2e1a4b734e780` |
| 31 | `theorem` | [mul_inv_cancel_left₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-inv-cancel-left.md) | 243 | `result-track:7ba765e0bc849976ec147855c9c426c6d47c5bd31e593402cf9e453864891e84` |
| 32 | `theorem` | [inv_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/inv-ne-zero.md) | 251 | `result-track:79c4d4ed5e8e665e5960053eb43762fa438e559ca04fa6534a6ee4dea2c817ad` |
| 33 | `theorem` | [inv_mul_cancel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/inv-mul-cancel.md) | 257 | `result-track:3bd5735ecf4b33e15396731ac8e9bf2d933ef1db759de5868c3caa38c74699e1` |
| 34 | `theorem` | [GroupWithZero.mul_left_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/groupwithzero-mul-left-injective.md) | 265 | `result-track:2b1c6d2d9914f74c0f6f26b790f573867221b8d24a189a0bd7e7cd02542107f1` |
| 35 | `theorem` | [GroupWithZero.mul_right_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/groupwithzero-mul-right-injective.md) | 270 | `result-track:64618d2dcbc5914af4db4bcfed0d308932268320a0eda61f796b6ef3c984b01e` |
| 36 | `theorem` | [inv_mul_cancel_right₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/inv-mul-cancel-right.md) | 276 | `result-track:2adad0634c7ee2c3726d6efc8d9f97106f1366fac9651933dbbb816f6f6741ea` |
| 37 | `theorem` | [inv_mul_cancel_left₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/inv-mul-cancel-left.md) | 284 | `result-track:7a952a1e6a1666d836fd46aa3be9520cf067e3fbac18925fbd478e2b52deaac7` |
| 38 | `theorem` | [inv_eq_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/inv-eq-of-mul.md) | 291 | `result-track:2ba7ed66a44c2a7626997a1f4fc293079a3c959c0285c4b342c915ad183dd2c4` |
| 39 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-13.md) | 295 | `declaration-track:912b7129167354b4335d8d640bda61840917a647a1b1ee955aa5b9fbce782192` |
| 40 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-5.md) | 317 | `declaration-track:2537c034fa87b9221ef32e79416f40e3ff967251c834c3eb0e86e44cfea3ae35` |
| 41 | `theorem` | [zero_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/zero-div.md) | 332 | `result-track:7b25ae702590beecdaf9d6ebb8a31b6fae4f28730b9253b2abe1ff5b08aca540` |
| 42 | `theorem` | [div_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/div-zero.md) | 336 | `result-track:db4f68c09d03a463583195f72fea5021e326429fcf099185050d5b5f586948bc` |
| 43 | `theorem` | [mul_self_mul_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-self-mul-inv.md) | 342 | `result-track:8cb49c348c0baba1d05eff140a1fe56866ebe846fd9900cc5f796a9e64e6042d` |
| 44 | `theorem` | [mul_inv_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-inv-mul-self.md) | 352 | `result-track:e73cd4f41570e67d8827a9110f1df9e58706f0f1f5468089fa6fbe3e2afebf59` |
| 45 | `theorem` | [inv_mul_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/inv-mul-mul-self.md) | 362 | `result-track:f8c3cb0a190e2140ef8e873cffcc1990c098a48f947e98a11ffa8eea820e6a85` |
| 46 | `theorem` | [mul_self_div_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-self-div-self.md) | 372 | `result-track:c33da82c304b3ae11b59efb44e2ab5c9f0fa21d181fd4e3efa6cadd0f399514a` |
| 47 | `theorem` | [div_self_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/div-self-mul-self.md) | 378 | `result-track:30ce7d3a16976116d29d7b517a58fde6adf3b77f6fa7929edd706451b56660aa` |
| 48 | `theorem` | [div_self_mul_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/div-self-mul-self-source-edition-2.md) | 384 | `result-track:a46a7ba2f60c1b782e02478dba32bf5622408fff297c605a8c99285a79d3076f` |
| 49 | `theorem` | [one_div_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/one-div-ne-zero.md) | 391 | `result-track:68f45d2327eeca51f35dabb1c1275be16611dfbf0150291341998952908ef5c8` |
| 50 | `theorem` | [inv_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/inv-eq-zero.md) | 396 | `result-track:0549217ac37ffc3370d87b06229583f63da80435f2a57ce9048809ab479afbef` |
| 51 | `theorem` | [zero_eq_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/zero-eq-inv.md) | 400 | `result-track:ad1d61f62c241556bea094511f87ba3a4185697e4dfedc28dd0fbae353c093bf` |
| 52 | `theorem` | [div_div_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/div-div-self.md) | 407 | `result-track:a63d987e4980d8e9cef03e0660bb45ffe07ed7b1f95c8950fbd95a1c3af9badd` |
| 53 | `theorem` | [ne_zero_of_one_div_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/ne-zero-of-one-div-ne-zero.md) | 412 | `result-track:142c746321859a4cae683759bf6844dac85a19af1bbd06b31382568b85aa1c51` |
| 54 | `theorem` | [eq_zero_of_one_div_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/eq-zero-of-one-div-eq-zero.md) | 417 | `result-track:f48dd23044acf09c3ca0aa00d662d193ddf1bf04dafba65131af192fb10a2bd4` |
| 55 | `theorem` | [mul_left_surjective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-left-surjective.md) | 421 | `result-track:5ad7265277dc2568fba2ef65c5df9bb0d1a6f6b5a9d7dd96a72d8a2beb5745a4` |
| 56 | `theorem` | [mul_right_surjective₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/mul-right-surjective.md) | 425 | `result-track:733d6c4f27cf74c6be9c417d75a755f4c383660425568fc2cec01d671cb7e254` |
| 57 | `theorem` | [div_mul_eq_mul_div₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/div-mul-eq-mul-div.md) | 435 | `result-track:fe706f9f874ba5feb039334766e3ce04e5a099ab8592edd380c78bceab0054af` |
| 58 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-10.md) | 446 | `declaration-track:6af2101afd8489fc81c08cd5bb251770427c4223b38e516888f3a7b06b4dcc67` |
| 59 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-21.md) | 448 | `declaration-track:eac432f9ce3f719ae89b5469ac2ddf10311675afa100f748f0266ae9542b27c5` |
| 60 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-16.md) | 450 | `declaration-track:bf4546327806db6a4a9c1b2beae2125a5ae4602ab0713572877ce458b224f320` |
| 61 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-17.md) | 452 | `declaration-track:c433bdce2e50c8e83ed7b61c9542471dfe9bcb679464b18116ff3d758865cb26` |
| 62 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-7.md) | 454 | `declaration-track:4862681bbc6f2b389174bf1aa7a2e49028a475577c806685db59e88c70cebe85` |
| 63 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-14.md) | 456 | `declaration-track:93d9b0c42e098509cf8007246b7504a6d981f241d3658c3b8dff6a3a91ad9f54` |
| 64 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-15.md) | 458 | `declaration-track:a969937a5ad684cc9888abbe5de43a2574e386a768ed9964405605f14b39731d` |
| 65 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-23.md) | 460 | `declaration-track:f64e6f6c2cc4d8ddce88adba0176c3d6c43a1c676aee022367980e1aa2b43aca` |
| 66 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-9.md) | 462 | `declaration-track:5b02afed54bacd00bc11258f7d7b35680d2a7829d7e574ec981050f07b8d4b67` |
| 67 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-6.md) | 464 | `declaration-track:3f2ce402fdedaa48b55d41acd15e0c4e7173669445eee2860ff6fa3e7c9a96bb` |
| 68 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-4.md) | 469 | `declaration-track:2404615a96b062d1a8701583bcf6ff81e6d9f8693753063a06106bd729d391b2` |
| 69 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-11.md) | 471 | `declaration-track:7ad4b4bc977bc6cd3da66f732f016aaf6aae5006fa8a6e63510150e21ba690a2` |
| 70 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-12.md) | 473 | `declaration-track:812dac9409c5d999e4eba9fd470bc8f98307b9ad152b1eaa6ff9ca0aff4767ca` |
| 71 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-2.md) | 475 | `declaration-track:06f759630a12b0d4b23e50ab23dc4ea02616adbbf608099157d56a4a04a5d3ba` |
| 72 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-8.md) | 477 | `declaration-track:5962dd37e9d52b43b03412b9849b8c33e27500fabed9a31d33b079a2e61cd547` |
| 73 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-3.md) | 479 | `declaration-track:1a34398cf77ba090715253ca71f2dc12435cb3516622033bf12bb8bdb336e65f` |
| 74 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance.md) | 481 | `declaration-track:001e38d4347bba8a1a9f620ac12d311b91b424d3b59fac6fd35d67aa932f1b01` |
| 75 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-22.md) | 483 | `declaration-track:f5940e09c4cf0acc131f56df1382f73c3ac5e4fa2ce05ecbeadf18730d1c24ea` |
| 76 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-20.md) | 485 | `declaration-track:e7335881c917f9c9120affa618dcb986c57c795bebcff9a34c329db016ed795b` |
| 77 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroBasicMulLeftInj.lean/declarations/instance-source-edition-19.md) | 487 | `declaration-track:d70346388fd5a47801521f2286199905adc8f45340b3d57a95ebc31f9e86868c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b861e440be0995273c2aba3b54d731bb72850d027b57d40c75f986f2325f1f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb031022dc7e422bd4d36e4a225beffa09ea3842b866fa2604a581bec52848802.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb031022dc7e422bd4d36e4a225beffa09ea3842b866fa2604a581bec52848802.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
