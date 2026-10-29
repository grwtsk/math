# Verification target: Zeta Mobius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cea17f79a8ed7f28eb154e891c483301a91842a7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cea17f79a8ed7f28eb154e891c483301a91842a7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.FractalSpace` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ArithmeticFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/arithmeticfunction.md) | 5 | `declaration-track:a7c6c3488f5bea576ed4d3e883768978af76642a9fbaea119623142f1456bde3` |
| 2 | `abbrev` | [DirichletSeries](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/dirichletseries.md) | 6 | `declaration-track:14aae060fe7e97a4f93b128cca8bb709ec77932278708b5f62f346a33c7bfae3` |
| 3 | `abbrev` | [PrimeScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/primescale.md) | 7 | `declaration-track:60e6c675b5c9c23b01502af52b84595d365dee6b107279dfc3ae14a3c38c4669` |
| 4 | `abbrev` | [SquareFreeScale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/squarefreescale.md) | 8 | `declaration-track:7dc1da297905dd9d0f22743fa85212fbcc5c19d33f23550934ca372615ed0c42` |
| 5 | `def` | [RiemannZeta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/riemannzeta.md) | 10 | `declaration-track:17671bda408868a8cf556336410eda7e3afba3cae06f84dba38804971b59d8c4` |
| 6 | `def` | [zeta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/zeta.md) | 11 | `declaration-track:8790c94531598c7385d0fbedf426eb5fa43cbda267871ff1656a67d451c5bf4f` |
| 7 | `def` | [arithmeticDelta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/arithmeticdelta.md) | 13 | `declaration-track:9b1017b6608e7c57eb0b5df0fab6028e8a37459e450c3beb3a200c4d9f82f93b` |
| 8 | `def` | [oneArithmetic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/onearithmetic.md) | 16 | `declaration-track:e34218fb0e5cdcb6ef8fc1a4cb57454cc707cff6b4cf63fb77bf42c1864d6769` |
| 9 | `def` | [MobiusFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/mobiusfunction.md) | 19 | `declaration-track:edf1357920de363efd8b60d601cdfe46311e7b445aac397043be00fff3282f36` |
| 10 | `def` | [mobius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/mobius.md) | 22 | `declaration-track:07308d9899e6aadb9f09c84e923de6662ff26ecece4cc7a63de6052d7b71c463` |
| 11 | `def` | [DirichletConvolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/dirichletconvolution.md) | 25 | `declaration-track:2777748598defe161da728c21373537e50b16a2eea2d23968eee8ba2b149af2e` |
| 12 | `def` | [dirichletConvolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/dirichletconvolution-source-edition-2.md) | 28 | `declaration-track:e6fb1ea145c3c4a0b70fdb8f2a5df2b95163d59c1fb7afa95ddc345c62477c8b` |
| 13 | `structure` | [FinitePrimeSet](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/finiteprimeset.md) | 30 | `declaration-track:0eb20c84700cb669fe034ae5ea26b8703d6e18b0e920794a368097f7333a99a0` |
| 14 | `def` | [EulerProduct](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/eulerproduct.md) | 34 | `declaration-track:926cbe3f1109bbcd7927912578f1f71f0d75669dfa56c3ece4f1d38a4f18f023` |
| 15 | `def` | [finiteEulerProduct](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/finiteeulerproduct.md) | 35 | `declaration-track:8e7e8abca8e5cd693a6ff1a72247463d06764a4762efbcc2c375a4b9b98d5f57` |
| 16 | `def` | [finitePrimePowerDirichletSum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/finiteprimepowerdirichletsum.md) | 37 | `declaration-track:91e890379f9055db3bf8b4abaec66d8ac7c300c251b347eee9dbe5ece61df94d` |
| 17 | `theorem` | [mobius_dirichlet_inverse_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/mobius-dirichlet-inverse-one.md) | 39 | `result-track:9826b68e2e137082866347a836da2004915d4ecd719fc7becb8db0a6ad63cef7` |
| 18 | `theorem` | [finite_euler_product_expands_over_prime_powers](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/finite-euler-product-expands-over-prime-powers.md) | 43 | `result-track:2a2e0272ee3a1f8f6f391fcc5097335b70e3719e8000ca7e07442166bc392386` |
| 19 | `def` | [analytic_euler_product_not_claimed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/analytic-euler-product-not-claimed.md) | 50 | `declaration-track:5ebe390589e950ff3657b90764cc2fe88933a98856e301dba43d16eab1a29dd0` |
| 20 | `def` | [analytic_mobius_inverse_not_claimed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/analytic-mobius-inverse-not-claimed.md) | 53 | `declaration-track:085ef3ce66da1ed916e9a7ba400c53e1f2750d8a482af6d1cda58e9900a08915` |
| 21 | `structure` | [RiemannZetaDescriptor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/riemannzetadescriptor.md) | 56 | `declaration-track:1aa4d3daf88ede3e12e6333299742bc3d5b630efa6322e247550a5fc18571519` |
| 22 | `structure` | [EulerProductDescriptor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/eulerproductdescriptor.md) | 61 | `declaration-track:eb1d9f16e565efb5288beb8e6c39f7fd6f5d2841bad7f20e47d11587048e8194` |
| 23 | `structure` | [MobiusDescriptor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/mobiusdescriptor.md) | 66 | `declaration-track:46fd974110a949df8a49d671ea598998ee5f68d27e23b3a46155648e3d1f0ca4` |
| 24 | `structure` | [DirichletSeriesDescriptor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/dirichletseriesdescriptor.md) | 71 | `declaration-track:9307447201310f6244838c08faddb8954870fd799fe0c55b187c8eb7996f61a0` |
| 25 | `structure` | [DirichletConvolutionDescriptor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/dirichletconvolutiondescriptor.md) | 76 | `declaration-track:678ec221cce8fba072e30251dc11f24f105758c7c89fea20cdeea9b35bd85000` |
| 26 | `structure` | [ZetaMobiusScaleData](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/zetamobiusscaledata.md) | 80 | `declaration-track:5bed36ee04206f133e23108b83928aa149fbd8a3fd5ab26f20795ae9dde67e76` |
| 27 | `def` | [ZetaMobiusArithmeticSound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ZetaMobius.lean/declarations/zetamobiusarithmeticsound.md) | 88 | `declaration-track:6591350f8ac4c523e830ac920c2ad4c055dd48d31ebb4996dd837de23521cd33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e18a45f26c1820b077d2092df09d3a0c94418f7ba8c8716eb10876aa56e11343 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ZetaMobius/Varianteb97c1f5d47e49e85db87500d3c8e97063713dee8913a95a91d1d28539c1a76c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
