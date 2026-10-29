# Verification target: Higher Power Tsum Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4091907ee30ca433189623c6063d7db8397b35b",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4091907ee30ca433189623c6063d7db8397b35b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPrimePowers` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSector` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Int` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHigherPrimePower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/ishigherprimepower.md) | 25 | `declaration-track:dd0d37b79d89ba9f2bd2caadfbf53f24b7ba8d6e00b81f84060b17a0e0d52ea9` |
| 2 | `def` | [higherPrimePowerIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higherprimepowerindices.md) | 28 | `declaration-track:37702b92965c21647f215761e55e155f333a48f85c10b2de0dd5095ecf3eac55` |
| 3 | `def` | [higherPrimePowerContribution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higherprimepowercontribution.md) | 33 | `declaration-track:dc26511c290f1b7d8c83412eb78ee54d5f505ad01d66b2956001098ea6543031` |
| 4 | `theorem` | [prime_power_representation_unique](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/prime-power-representation-unique.md) | 39 | `result-track:79e51f7b886222ff4ee903b300fd878ef6063c82bca8f03dae3302df34b0e18a` |
| 5 | `theorem` | [primeSquare_not_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/primesquare-not-higher.md) | 45 | `result-track:3352cc023f2f88ce3f9d7dc0d8290a6ff00b738416d837497fff9666b30a5c5c` |
| 6 | `theorem` | [primeSquare_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/primesquare-not-prime.md) | 53 | `result-track:f3e10545c518b3f2d68856b7d1f6e2cb9abdb594b1ebdb89de1597cd47bc8164` |
| 7 | `theorem` | [higher_not_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higher-not-prime.md) | 58 | `result-track:cb8fe4c5b5dab9ac25edb214cf64b2c793152ba740cd7a3b4e413c193f466e9f` |
| 8 | `theorem` | [nonprime_primePower_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/nonprime-primepower-iff.md) | 63 | `result-track:54e6fbaab200890904cd22255041b196f527e69aac83be47acb565625ef3deec` |
| 9 | `theorem` | [nonprime_weight_zero_of_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/nonprime-weight-zero-of-outside.md) | 83 | `result-track:986238861fbfd8800830eda190ed44f9ac6c61f68a12b98fef9e2c99ee1a1c70` |
| 10 | `theorem` | [primeSquare_higher_indices_disjoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/primesquare-higher-indices-disjoint.md) | 91 | `result-track:042d94c5c090e0c1e7c28dfda4f9d0db6ee765654c0993b38c75e54861ccb317` |
| 11 | `theorem` | [properPrimePowerContribution_eq_square_add_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/properprimepowercontribution-eq-square-add-higher.md) | 99 | `result-track:d08d8ea177ee3aff3b5b14362e6f3d01a91af7b414719ea5d0ece051dba81226` |
| 12 | `theorem` | [primePowerContribution_eq_prime_square_higher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/primepowercontribution-eq-prime-square-higher.md) | 120 | `result-track:e8cdefb28e182f0f3f4355a543c92ea3e56e63ff5a9191e4b0cfdf452696e271` |
| 13 | `theorem` | [eight_higher_not_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/eight-higher-not-square.md) | 128 | `result-track:207a0a7ea6afd6ef0194ff61e3c76e22815fedc3c71bf7accb08c22effdc8b3e` |
| 14 | `theorem` | [eight_mem_higherPrimePowerIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/eight-mem-higherprimepowerindices-iff.md) | 133 | `result-track:7c60f762c0c9f52babf8a0a21f0d00ef15be0400a661c179ea03c99831a6144a` |
| 15 | `theorem` | [sqrt_nat_power](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/sqrt-nat-power.md) | 152 | `result-track:57a454e517b53535a5830ea1a6667ebb092d1940fcb9897e242ea0f9b0d62b6e` |
| 16 | `theorem` | [higher_prime_power_weight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higher-prime-power-weight.md) | 159 | `result-track:1d0d14b4489e4f1ab9ec4f5483f2f52dadd6d81e668b453383ecd27456c73ba3` |
| 17 | `theorem` | [higher_prime_power_summand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higher-prime-power-summand.md) | 166 | `result-track:9b1a03604db9e82b8e3f82d5cfa3d04a8030dcc1ee5be146ed14fb989b260be6` |
| 18 | `abbrev` | [HigherPowerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higherpowerindex.md) | 186 | `declaration-track:3fe69cfafb122685bf2461cb69afdff9b24b9b62431a3f321da8f8fe2eee269a` |
| 19 | `def` | [powerIndex](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/powerindex.md) | 189 | `declaration-track:2adbe6ec34f0da1100b48c1153463d59cc1857af0f8ed957de1ea8e842f99fa4` |
| 20 | `theorem` | [powerIndex_injective](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/powerindex-injective.md) | 192 | `result-track:6f5845055837bb73b20d0f8ae2df084f7c5298594ee801ca8495d141098abc3e` |
| 21 | `def` | [higherPairIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higherpairindices.md) | 202 | `declaration-track:373592c2f03fbc0f2e08400619c90394ec5fc2648c588e137ffae8691cd47419` |
| 22 | `def` | [higherSourceTerm](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/highersourceterm.md) | 206 | `declaration-track:4bec69ab0d77427b579fb5246908c7c225b6851c11860758f96d544a509faee7` |
| 23 | `theorem` | [powerIndex_isHigher](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/powerindex-ishigher.md) | 211 | `result-track:b482c53be6d97545107524c13691658cf4e62221be9889d4ad32b40901b2da28` |
| 24 | `theorem` | [powerIndex_two_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/powerindex-two-le.md) | 215 | `result-track:212f9d5dc05bec413b49bd499646da2f897002715fa6f7f9e736e9b422c06456` |
| 25 | `theorem` | [mem_higherPairIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/mem-higherpairindices-iff.md) | 219 | `result-track:3ec6f70607565fdb0bdfaa0405bcff41251cc17332d3f9b895df2e246af53f9f` |
| 26 | `theorem` | [higherPairIndices_image](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higherpairindices-image.md) | 226 | `result-track:9a90e5f788838113e3b7bc384c7292af4302f45304782c7b22568996abf0874a` |
| 27 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higherprimepowercontribution-eq-finite-sum.md) | 241 | `result-track:ca07c8f516ddd4ebfbca1c4d4a0f9bd8b69eac3fd0bbe123bda3142fc0cf3455` |
| 28 | `theorem` | [higherSourceTerm_zero_outside](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/highersourceterm-zero-outside.md) | 251 | `result-track:677c102cc9cd9a8791433f456cbe1366e366f21bcc7d55d8902f7ccc49c863ac` |
| 29 | `theorem` | [higherSourceTerm_finite_support](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/highersourceterm-finite-support.md) | 266 | `result-track:e950fecad7705b4817494c65ac95d35affc559b0769bb75af3ccabd94acd19cd` |
| 30 | `theorem` | [higherSourceTerm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/highersourceterm-summable.md) | 272 | `result-track:3c7844769f2fd8e0a1978136e1ca2d3866c6f087a787e09754650c1455530db0` |
| 31 | `theorem` | [higherSourceTerm_norm_summable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/highersourceterm-norm-summable.md) | 277 | `result-track:f20a577da7ccb3f271e7951124b8b8e147777e869e5d4d9fcd8fa4300dedd723` |
| 32 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/higherprimepowercontribution-eq-tsum.md) | 284 | `result-track:4c8de0f4b6b51f8d44c4e224a84a99761c5a05df919ba898bbd70c9f8f0cf356` |
| 33 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-8.md) | 306 | `declaration-track:85b1315f9473b2447c7f434fde25d43ca97d2ff3e43e868c8305d2aabcd04754` |
| 34 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 308 | `declaration-track:4e89376bd82fe9381543d94ab0e21498883e14b68d03c611e5dbeb5ddbc75382` |
| 35 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-14.md) | 310 | `declaration-track:d9a0f49f5fcad35e468d36fb478fca5d08c4b4d25514ea498ce843ebda16ad01` |
| 36 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-15.md) | 313 | `declaration-track:dd2140e473f388a0dae5e4b65f1c4a9da53a21961237f42862201af654243f84` |
| 37 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-11.md) | 316 | `declaration-track:a4f70a2232c6ed316049af0b6c46be22bb8150733e382b632095e1ee17f8e765` |
| 38 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-7.md) | 320 | `declaration-track:6d02332f725e9fc4356645c09883d760f3a9188441b61be0d5dfb2063f62009b` |
| 39 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-10.md) | 323 | `declaration-track:a20cf4d70055762b672a103b70402a2983e1becbedf5fa70f4c0ce99c257366a` |
| 40 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 326 | `declaration-track:5a03c00121d59688a2cdb83407475889f09c3a9580b4e70b41a50076dcd8c968` |
| 41 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 330 | `declaration-track:4fabd7e5af13ecb44585d8567c47807cd678d64653e9b2651c9034047f0d4851` |
| 42 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-6.md) | 334 | `declaration-track:5d90b7d126a925fb563f0d19d480c4be3688dbc5310350c99cd24098868be151` |
| 43 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 338 | `declaration-track:5500ba2d2fd57192fc30af6ff75a6017c389cc18470000e5a0350f0d0a36286a` |
| 44 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-9.md) | 342 | `declaration-track:997dd8b61ee0c0593653095b0a7c37dbf7f072cb747dfdddefa995d58923053f` |
| 45 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-13.md) | 346 | `declaration-track:d7bf362ce660da012c6b99e9c4aa67db9e48b0c3922613e1332bdad33eefa2fa` |
| 46 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example.md) | 350 | `declaration-track:09f7e25ef023e2b82f17120ad51cf2068ba18e091e2df61de201a0de873af746` |
| 47 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/HigherPowerTsumStatementsNamespaced.lean/declarations/example-source-edition-12.md) | 354 | `declaration-track:d3bb60a0ff638cfb2753f47e26773da62f0c7ca0e6584dae788441cda0f3ac86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c1d29fe2462d1aa5be42a3ed52b57681f6dac32a5e8a21e4ef88ed84e4b30a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HigherPowerTsumStatements/Variante8718222945b8971cf92672e7b9762c757e1ddadf40e28d6d5d4c13b8b1982ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
