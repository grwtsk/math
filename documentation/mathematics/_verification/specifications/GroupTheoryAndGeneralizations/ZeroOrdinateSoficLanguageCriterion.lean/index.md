# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ZeroOrdinateSoficLanguageCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ce2d34115ac5326da6e79a8de75bb2dc645442",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ce2d34115ac5326da6e79a8de75bb2dc645442`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover`](../../../../GroupTheoryAndGeneralizations/DynamicSoficSpectralCover.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic`](../../../../NumberTheory/HeatFlowCompressionSofic.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RiemannZeroSymmetry.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RationalReal](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/rationalreal.md) | 53 | `declaration-track:6cae858aade61c5df93813db5c70a431af1c540a132402c50cdc29a3e6c99654` |
| 2 | `def` | [AlgebraicReal](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/algebraicreal.md) | 58 | `declaration-track:ab82500b4d379c879004d06df76275df58cd8a976080b351a8428d798c3d9e0b` |
| 3 | `structure` | [CorrectRealArithmetic](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/correctrealarithmetic.md) | 65 | `declaration-track:555bce8274fa07952aa23879e3600cdc0fd366a21a36d84f90308876e210b629` |
| 4 | `def` | [ActualZetaZero](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/actualzetazero.md) | 71 | `declaration-track:e94cfad02ba89913e002e1582768df181623184f196e26a9b2657863e7ef52b0` |
| 5 | `def` | [zetaHeight](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zetaheight.md) | 74 | `declaration-track:b2477cd9b36a08209a190da3235efb92ec3eb60f37a0aa6aee3c1df3f099bbb9` |
| 6 | `def` | [ZetaCriticalPlacement](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zetacriticalplacement.md) | 77 | `declaration-track:ac836a29cf93908f5e23eee41ccb1afca1c5576db6476a88cf6aed49a8c714fa` |
| 7 | `structure` | [ZetaSoficSuppliers](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zetasoficsuppliers.md) | 83 | `declaration-track:73bb951ab364865ab918c49fe73b6b58e7615663b41c54524a032c8cae98d94e` |
| 8 | `theorem` | [zeta_zero_ordinate_irrational_without_GRH](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-zero-ordinate-irrational-without-grh.md) | 95 | `result-track:03082662df8607016edf1d12d4c219e63c44e059fd025fddc64f96e492dd812c` |
| 9 | `theorem` | [zeta_zero_ordinate_transcendental_on_line](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-zero-ordinate-transcendental-on-line.md) | 107 | `result-track:7067b61d6b16fd32cae1d9275b7a5c954ed1389d28d57d1327a4f9214b735819` |
| 10 | `theorem` | [actual_zeta_zero_irrational_and_conditional_transcendental](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/actual-zeta-zero-irrational-and-conditional-transcendental.md) | 122 | `result-track:c98a1e2eb09f04f040392b478fae458d7489b8ef418de67baba5a14e441e902f` |
| 11 | `theorem` | [ordinate_split_for_dynamic_spectral_cover](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/ordinate-split-for-dynamic-spectral-cover.md) | 145 | `result-track:6be3531d977efb184ca9b57b73cec886cd2da299d865da985759642d5a02ce6d` |
| 12 | `structure` | [ZetaEventualSoficSuppliers](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zetaeventualsoficsuppliers.md) | 161 | `declaration-track:d7f3aad7b36d6b5abe482bb97c1a12581c464d23ce7d2a7e263ff822590ac6ff` |
| 13 | `theorem` | [irrational_of_eventual_language_obstruction](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/irrational-of-eventual-language-obstruction.md) | 176 | `result-track:7acc73e82bc758fd7769450b36f2ede78c9b119eb9115ae60ebe18384bc49baa` |
| 14 | `theorem` | [eventual_sofic_irrational_and_conditional_transcendental](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/eventual-sofic-irrational-and-conditional-transcendental.md) | 190 | `result-track:d74616c2061c95cd6490d1512f82d2c4d54d572cb469ecc656d324da67c35a11` |
| 15 | `theorem` | [eventual_ordinate_split_for_dynamic_spectral_cover](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/eventual-ordinate-split-for-dynamic-spectral-cover.md) | 214 | `result-track:6ff1d80b7e8b3a2440b2d4ee29c934167ebc4789d5295e27803fb00dc46d2af9` |
| 16 | `structure` | [DynamicThreeQuarterSoficProgram](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/dynamicthreequartersoficprogram.md) | 230 | `declaration-track:3d57468b5aa1328958e1de41f24cf7e7642490ffba13ad5556f64f4886bd4ff4` |
| 17 | `theorem` | [DynamicThreeQuarterSoficProgram.zeroFree_strict_threeQuarters](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/dynamicthreequartersoficprogram-zerofree-strict-threequarters.md) | 241 | `result-track:8c5de3c86e3a56865e83e89a751c6aa6b032d64e10e4939137cae3d4e760eab5` |
| 18 | `def` | [ZetaUnboundedTailContexts](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zetaunboundedtailcontexts.md) | 264 | `declaration-track:a2b6b943c1bcf518aa891e19a46b1a9bad0cfccbe7eaabc5f1f16cc62328eea9` |
| 19 | `theorem` | [no_eventual_sofic_of_zeta_rightContexts](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/no-eventual-sofic-of-zeta-rightcontexts.md) | 273 | `result-track:d8bf2a22bb412891c05fa331b5d382bd6ffd4203e4ff3395351fe1409ee20197` |
| 20 | `def` | [eventualSuppliers_of_zeta_rightContexts](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/eventualsuppliers-of-zeta-rightcontexts.md) | 286 | `declaration-track:fdb184c3f197443f4b278bd01c08379b7427ee03ef97a1b5a0401d1f9df50aa8` |
| 21 | `theorem` | [zeta_irrational_of_rational_sofic_and_rightContexts](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-irrational-of-rational-sofic-and-rightcontexts.md) | 305 | `result-track:8541c66f5ebde3e4c0506c14f5b995cadd09a3eaf16f00dbcdf28f15cca57806` |
| 22 | `theorem` | [zeta_transcendental_of_critical_sofic_and_rightContexts](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-transcendental-of-critical-sofic-and-rightcontexts.md) | 319 | `result-track:4a5c53b023bae881c3cd8e5ae133e6abdc62e303c553a56decaed84346559a15` |
| 23 | `def` | [TailRightContextCertificate](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/tailrightcontextcertificate.md) | 346 | `declaration-track:0a251703e41cf6b3df7923d51d6cd77ad2be3aba4d9eeb382b64c2c3fc6ba227` |
| 24 | `def` | [TailExactPresentationAtMost](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/tailexactpresentationatmost.md) | 356 | `declaration-track:f6619c804185aec7cabd1707681d599afa9032cda65f00a80e8cc3e627117a02` |
| 25 | `theorem` | [no_tail_exactPresentationAtMost_of_contextCertificate](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/no-tail-exactpresentationatmost-of-contextcertificate.md) | 366 | `result-track:cafb25988128eb58925c7aa4f908e23cfc7fa799fd6a91356a7fa6e9ac5201fc` |
| 26 | `def` | [ZetaTailContextCapacityCertificate](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zetatailcontextcapacitycertificate.md) | 382 | `declaration-track:019472da13c8419a5a6f4f3208f7c34b15f8d4067ca1a5f6ed3f470f969a1b56` |
| 27 | `theorem` | [no_bounded_tail_presentation_of_zeta_contextCertificate](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/no-bounded-tail-presentation-of-zeta-contextcertificate.md) | 392 | `result-track:8ab7cefab4373fab6242f8cbd69ec48076952a2ef69a720f0922d51bd9ccb812` |
| 28 | `theorem` | [zeta_capacityCertificate_of_unboundedTailContexts](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-capacitycertificate-of-unboundedtailcontexts.md) | 405 | `result-track:be249cf845aeca6a7f42910dc3a221303b5568e35c23e8efb6b9d395eb2b800a` |
| 29 | `theorem` | [zeta_unboundedTailContexts_of_all_capacityCertificates](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-unboundedtailcontexts-of-all-capacitycertificates.md) | 421 | `result-track:aaca5532a940bc49c1662de3cb1d048fc7732cece191d627ccd3f81bb36e5e9b` |
| 30 | `theorem` | [zeta_unboundedTailContexts_iff_all_capacityCertificates](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-unboundedtailcontexts-iff-all-capacitycertificates.md) | 441 | `result-track:228c177b76932d079145535355c3f416f525904d13879df4cca4568dead52562` |
| 31 | `theorem` | [zeta_irrational_of_all_capacityCertificates_and_rational_sofic](../../../../GroupTheoryAndGeneralizations/ZeroOrdinateSoficLanguageCriterion.lean/declarations/zeta-irrational-of-all-capacitycertificates-and-rational-sofic.md) | 457 | `result-track:cdc307917ae8e1d09585e217c5ea7042fba1ee8a02dc6af5aaaff196f3073f3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a6f66bba9fc76cdd27e9b2fa3f0235e8e1e7a0285779e1873456b9c36be7ca4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ZeroOrdinateSoficLanguageCriterion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
