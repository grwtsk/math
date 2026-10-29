# Verification target: Arithmetic Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f35a6966ad66a67a057434ec88fed5a911344cda",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f35a6966ad66a67a057434ec88fed5a911344cda`.

Source path: `GRWTSK/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Arithmetic.BSDTwistWitness` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Arithmetic.EllipticCurve` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Arithmetic.ModularWitness` — import line 3; external provider; requires a separately pinned dependency.
- `Folder.Arithmetic.Torsion` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDContract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/bsdcontract.md) | 23 | `declaration-track:f1d6e2886a3be8e2eaa4ea467a64eb88eca759407499b45b5ae27fcf95abd3d4` |
| 2 | `structure` | [HasseWeilContract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/hasseweilcontract.md) | 32 | `declaration-track:ca4ca58c90483ab8eae3a530095569094e1e06c2e91dc7e2beb593e397e8c40c` |
| 3 | `structure` | [ShafarevichTateContract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/shafarevichtatecontract.md) | 42 | `declaration-track:9028ddfa708788ae898dc4effa7376ba5e71abe266b48d2d718688e7beb590e0` |
| 4 | `structure` | [ModularityContract](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/modularitycontract.md) | 49 | `declaration-track:c128cee1a7a372d6501dfaf3135434170ec4964e15f77bf030e7d5a82f7d23b5` |
| 5 | `structure` | [BSDDataSource](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/bsddatasource.md) | 55 | `declaration-track:f0a06ae2c91cd427ee5eea7ecd15d48c89a18461ed676177c898bb6e591f6a88` |
| 6 | `def` | [AllTwistsCertified](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/alltwistscertified.md) | 64 | `declaration-track:ad9bc0b1a886417ec485131a6d5790a8922eecd10614fe0cf5d6cac798fd71b1` |
| 7 | `structure` | [CertifiedBSDDataSource](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/certifiedbsddatasource.md) | 67 | `declaration-track:fa309749cb84cdd2993bf4258f0e1598bcd79eead560cabb5560fb0b4baa8331` |
| 8 | `structure` | [ArithmeticMonodromyParameterSource](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/arithmeticmonodromyparametersource.md) | 72 | `declaration-track:00f1fdd8b8a6e3f8a776b0d11658d6321a2fa85ce6762c9d489f02a6d3f33adb` |
| 9 | `theorem` | [bsd_rank_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/bsd-rank-eq.md) | 79 | `result-track:e59989f90d7120b2c511d49f929f2f17dc1d473434e0be081b8f171f03163370` |
| 10 | `theorem` | [bsd_sha_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/bsd-sha-eq.md) | 84 | `result-track:24dc9dbe7ac50f6effde2454fdabd4d825a137d93f95f6d79d14e19330500594` |
| 11 | `theorem` | [hasse_weil_has_analytic_continuation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/hasse-weil-has-analytic-continuation.md) | 89 | `result-track:40b9ad011efdfc7fced5a31fdb69325881ce784570da105678c3c44968c77667` |
| 12 | `theorem` | [hasse_weil_has_functional_equation](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/hasse-weil-has-functional-equation.md) | 94 | `result-track:2cfd13bf23c43179914ae7e41c8ecc838e6934804a3efe416343dc3f4cb12812` |
| 13 | `theorem` | [shafarevich_tate_finite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/shafarevich-tate-finite.md) | 99 | `result-track:112983ce296743c71d855b348a15f026c82fdeed6d4da85be1ccc5940ba9d471` |
| 14 | `theorem` | [modularity_associated](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/modularity-associated.md) | 104 | `result-track:f7427eee13205bc05699af9a5b9f3ca342dab8291277a8a17c04d0cf3c04e71f` |
| 15 | `theorem` | [bsd_data_source_certifies](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/bsd-data-source-certifies.md) | 109 | `result-track:28d06d20ebc896c6293bb82edbf16496347067c006b8cdfe29325a2b1aa7cc37` |
| 16 | `theorem` | [certified_bsd_data_source_all_certified](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/certified-bsd-data-source-all-certified.md) | 115 | `result-track:85bbc8d6278c21f185bca0a925a7501c9725b6b5fdef596a7d65adf3d82f3c80` |
| 17 | `theorem` | [certified_bsd_data_source_infinite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ArithmeticBoundary.lean/declarations/certified-bsd-data-source-infinite.md) | 120 | `result-track:3e09d3760bf37730ef92ab0e8709d94df81edfc2a574bb37fd5b207e49136c2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78aa038e0c62bdea2908d96d75f621291eeb2931751ea5a5d41a3663401395de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean","GRWTSK/_verification/specifications/Algebra/ArithmeticBoundary/Variantbb0e243a99b3aab0553341c81f043b0f173b7c614cc2546d21a2cdacbf017fdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
