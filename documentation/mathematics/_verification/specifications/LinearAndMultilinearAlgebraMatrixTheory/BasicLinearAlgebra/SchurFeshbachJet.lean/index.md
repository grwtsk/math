# Verification target: GRWTSK.LinearAlgebra.Matrix.SchurFeshbachJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9089dd3659661015497c7efaf0aa031435e12e6c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/Matrix/SchurFeshbachJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9089dd3659661015497c7efaf0aa031435e12e6c`.

Source path: `GRWTSK/LinearAlgebra/Matrix/SchurFeshbachJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/Matrix/SchurFeshbachJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SchurComplement` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BlockPencil](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/blockpencil.md) | 35 | `declaration-track:fdcd291cef3b494a907abe8239f9f693d1de6574c43eee79051e1a490e994b09` |
| 2 | `def` | [full](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/full.md) | 50 | `declaration-track:5edc743dde9e979250ea6cf1b2b25a08110c4ae67824029bc251a53e5bf6c0bc` |
| 3 | `def` | [effective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/effective-source-edition-2.md) | 55 | `declaration-track:cd3106b6104b19ff91280ad42dae337b3e77829ed1632d54803e8a949ed7cf41` |
| 4 | `theorem` | [det_full_eq_det_qq_mul_det_effective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/det-full-eq-det-qq-mul-det-effective.md) | 60 | `result-track:170fd4323b9c2b9eccaeac3617056b326b60b8e0042d874963b50bafaae655f8` |
| 5 | `structure` | [InvertibleRegion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/invertibleregion.md) | 72 | `declaration-track:ab048bcc74f70bf118a3275a1e632f4335c17fbc294c077a38e57329989c4b93` |
| 6 | `def` | [effective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/effective.md) | 90 | `declaration-track:27f7b8941e65273f4fcb3f3c97a27af3be2cb0022ffacfd02d8d5eb5fc21ea01` |
| 7 | `theorem` | [det_factorization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/det-factorization.md) | 96 | `result-track:483ed146b00cb3419217b4f247f824369b0978834d71a022dc8159dd11976a2f` |
| 8 | `theorem` | [full_zero_iff_effective_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/full-zero-iff-effective-zero.md) | 106 | `result-track:0dcc73621a00dd0b93252c2bcdd0ef09d75831394cd41946804e6ef1e39f5978` |
| 9 | `def` | [fullZeroSet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/fullzeroset.md) | 121 | `declaration-track:b1fa22c3fd7dd693e1548159df0243fd4c9f2070ad32903723ccbb499d1c7407` |
| 10 | `def` | [effectiveZeroSet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/effectivezeroset.md) | 127 | `declaration-track:ce72247ddaf486f3e536026362194c83281d16b844a75ff55bc4129002ff99e4` |
| 11 | `theorem` | [fullZeroSet_eq_effectiveZeroSet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/fullzeroset-eq-effectivezeroset.md) | 131 | `result-track:db979d4654d3bf6329dca9f086e5bd3e2b783bb76fe4b44df898b8d37477355d` |
| 12 | `def` | [jetPolynomial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/jetpolynomial.md) | 144 | `declaration-track:11196c3b1dce2ffd4266876aae6caa5e178fc6f02e741e72a3ead5bbc1c6329e` |
| 13 | `structure` | [JetCertificate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/jetcertificate.md) | 153 | `declaration-track:bed5b7b07beb8f24a01e1c68d720109ecb443c7f29d10da756a1957cd1649320` |
| 14 | `constant` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/constant.md) | 160 | `declaration-track:0a0a13f7441e2ce8e5559608a75c91a9a6aec8fe25429167b61d56f6e8f3e136` |
| 15 | `constant` | [*](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/anonymous.md) | 170 | `declaration-track:65800179b952647b047a8be7744d1bbed3cd4f4e52e300f10a49e972f548c091` |
| 16 | `def` | [displacement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/displacement.md) | 177 | `declaration-track:ebfd846b0487091b266b6d765db87f88d903f6dd4e977349ceea8b094fd11f78` |
| 17 | `def` | [transverseError](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/transverseerror.md) | 181 | `declaration-track:5511230fac33e9ed0b9679d54db5b846b5483fd76b3fd4a888be86b0520186ae` |
| 18 | `def` | [heightError](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/heighterror.md) | 185 | `declaration-track:ef732fbc493e65522d73f9bd8748a55d367e3871b35c1737e36da8b78618ef05` |
| 19 | `theorem` | [displacement_re](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/displacement-re.md) | 189 | `result-track:983c0b31fa75fd734fd3065457dc832384dc2b1232b091064f04da50df9d2ebf` |
| 20 | `theorem` | [displacement_im](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/displacement-im.md) | 194 | `result-track:1ecff2888ae098e197cb693fe015e9261c1b9be4d8d1c9cd75d964e9a8014c19` |
| 21 | `structure` | [Enclosure](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/enclosure.md) | 199 | `declaration-track:cf441d3d081e1064e04dad11cbe3a86b2a00d5d4f58f57119805d44fef4fa493` |
| 22 | `theorem` | [Enclosure.remainder_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/enclosure-remainder-le.md) | 203 | `result-track:d948c90bc588c31e37fbdb8634e51c2841152e64d9d79007ee9a8d84287d11de` |
| 23 | `structure` | [CertifiedSchurJet](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/certifiedschurjet.md) | 213 | `declaration-track:fbf20718efc8b86330ab2695e3f3e2145d29ff2e899a8226650cd13e71fff870` |
| 24 | `theorem` | [full_zero_iff_jet_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SchurFeshbachJet.lean/declarations/full-zero-iff-jet-zero.md) | 235 | `result-track:7fce2db1bec14d843b063a7621b1ab172b63d7969b773c846b2178f030c84957` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1828b59fa3ea5aff1fedce71cede512666755591593c6ce224c92b3d8ef9f566 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/LinearAlgebra/Matrix/SchurFeshbachJet.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/SchurFeshbachJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
