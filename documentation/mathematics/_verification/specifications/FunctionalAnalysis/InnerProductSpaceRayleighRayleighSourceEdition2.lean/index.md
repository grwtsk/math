# Verification target: Inner Product Space Rayleigh Rayleigh Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db7b8956d2f7eacd51c4dfda733d76544286957e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db7b8956d2f7eacd51c4dfda733d76544286957e`.

Source path: `GRWTSK/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LagrangeMultipliers` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Eigenspace.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [rayleighQuotient](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/rayleighquotient.md) | 56 | `declaration-track:25bd5f5858f40928e047ad37571b3f07b5b85abb1cadff7ca162a49ce799dfe1` |
| 2 | `theorem` | [rayleigh_smul](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/rayleigh-smul.md) | 58 | `result-track:a9b0e62f49d4bd2a20a7c9c957ea6ef4cd9be7e457f4c7dd73681b11db0e9110` |
| 3 | `theorem` | [image_rayleigh_eq_image_rayleigh_sphere](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/image-rayleigh-eq-image-rayleigh-sphere.md) | 68 | `result-track:93595d18c72fd2d1fa674840c990bacedbfcc2ef3a1119fdb309eed4e1f3e339` |
| 4 | `theorem` | [iSup_rayleigh_eq_iSup_rayleigh_sphere](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/isup-rayleigh-eq-isup-rayleigh-sphere.md) | 84 | `result-track:6700659a505ffa7e8726f0a73698ea617009c609f56c1948e3795f7b36c867bc` |
| 5 | `theorem` | [iInf_rayleigh_eq_iInf_rayleigh_sphere](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/iinf-rayleigh-eq-iinf-rayleigh-sphere.md) | 92 | `result-track:57ca60f67c557b27eefef5dec9a5ca4637027c9bf09882f4d47655fa706e61de` |
| 6 | `theorem` | [_root_.LinearMap.IsSymmetric.hasStrictFDerivAt_reApplyInnerSelf](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/root-linearmap-issymmetric-hasstrictfderivat-reapplyinnerself.md) | 108 | `result-track:8c4e0957e99830ec44159591e2feaa5a6d932824b927753a1701edcae038ec75` |
| 7 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/macro-rules.md) | 120 | `declaration-track:28dd357c2befe95ad751c804147b49fbb934ae6d8d625a61f1dd2533af06281e` |
| 8 | `theorem` | [linearly_dependent_of_isLocalExtrOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/linearly-dependent-of-islocalextron.md) | 122 | `result-track:b666ebe6753ee4b9bdd8bbcdfd55e699dcc4a35b979121b64379e696fe694957` |
| 9 | `theorem` | [eq_smul_self_of_isLocalExtrOn_real](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/eq-smul-self-of-islocalextron-real.md) | 143 | `result-track:25408181644ac29726d935e7cda4a1b51ab38fbe1d47f68a496b3e21cfde3c9e` |
| 10 | `theorem` | [eq_smul_self_of_isLocalExtrOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/eq-smul-self-of-islocalextron.md) | 172 | `result-track:a19b73432f1e3527cc0b0d80a48a2b850a5a723370ca28f773ee680578b92a8e` |
| 11 | `theorem` | [hasEigenvector_of_isLocalExtrOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/haseigenvector-of-islocalextron.md) | 182 | `result-track:437d91eb7985cf7f16d829cd13f1aa862bbed534020118b01b296d5aa9c34298` |
| 12 | `theorem` | [hasEigenvector_of_isMaxOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/haseigenvector-of-ismaxon.md) | 193 | `result-track:7bf7141dfece6285b9dbdfa9ee3c29056995adb03d4035bf9c9efbfa2f477b61` |
| 13 | `theorem` | [hasEigenvector_of_isMinOn](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/haseigenvector-of-isminon.md) | 213 | `result-track:da151882617ee14fd362723b71fee4f826db2c6a4041d5155f07eb8bed25d365` |
| 14 | `theorem` | [hasEigenvalue_iSup_of_finiteDimensional](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/haseigenvalue-isup-of-finitedimensional.md) | 244 | `result-track:0369f766af1c3e87b03d2d8e56ab275684946b6b31d035689890d995c6e44114` |
| 15 | `theorem` | [hasEigenvalue_iInf_of_finiteDimensional](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/haseigenvalue-iinf-of-finitedimensional.md) | 264 | `result-track:5a652e0ecf1e1e7968b0fcffc024046723426201b1b3d80f5fe5937d1658cd1a` |
| 16 | `theorem` | [subsingleton_of_no_eigenvalue_finiteDimensional](../../../../FunctionalAnalysis/InnerProductSpaceRayleighRayleighSourceEdition2.lean/declarations/subsingleton-of-no-eigenvalue-finitedimensional.md) | 282 | `result-track:2f81682db1ec9a3a9d32087d5942075ada5d5e1304e607c5c744a918b516131f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d7284e6949e1a3b90431398d44dacefb971fad40535d5b40204e610b772dfa8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean","GRWTSK/_verification/specifications/Analysis/Rayleigh/Variant3c119e775d26fe92fb8d50c19bb601ca390867cf65f4074737325254cc3ca3e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
