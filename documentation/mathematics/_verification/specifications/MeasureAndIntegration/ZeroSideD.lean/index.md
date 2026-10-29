# Verification target: Zero Side D

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cf0e9a21cebd097e515b16a20b1c80c5ff1854d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ZeroSideD.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ZeroSideD.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cf0e9a21cebd097e515b16a20b1c80c5ff1854d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmD.ParamsD` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.ZeroSide` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.Tail` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses.GzGp` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [atD_phiHat](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/atd-phihat.md) | 38 | `result-track:192eff8f1db9c391d6bc96b11400e2e7b17a19719da22f651332877d900fd48b` |
| 2 | `theorem` | [atD_phiHatR](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/atd-phihatr.md) | 43 | `result-track:e6e64cf8160886b09c2651c8a19ee2cc3f14ff66950743ab01c205f6d90e3779` |
| 3 | `theorem` | [atD_a_eq_av](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/atd-a-eq-av.md) | 48 | `result-track:65fb448c8c00180ff5922f37270949dc0824d89afb38f4ae91ed299ccaa20f7e` |
| 4 | `theorem` | [atD_tau_eq](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/atd-tau-eq.md) | 52 | `result-track:ee591d33ae631c01ac4a3d5aa0e01f53626e0df1a68b6361f96443f5b6d41717` |
| 5 | `lemma` | [tendsto_L](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/tendsto-l.md) | 57 | `result-track:4faafa42116507f047ca750053151e9330ccb9e887f1aad5031f2107706d8d83` |
| 6 | `lemma` | [eventually_w8](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/eventually-w8.md) | 62 | `result-track:f43e040235db4c2c7865596a75b5b8abdab4a27c7eb1eba69a1587a51c2c7080` |
| 7 | `lemma` | [eventually_w4pi](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/eventually-w4pi.md) | 65 | `result-track:05be6f2612486f2a855100f85eb97fe3846e984b99712ed6439de5ef71143adc` |
| 8 | `theorem` | [aD_range_of](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/ad-range-of.md) | 70 | `result-track:b4145777c8a637d078b21490b7df77bf51c2176538befab243a064f32325ef3d` |
| 9 | `theorem` | [eventually_aD_range](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/eventually-ad-range.md) | 79 | `result-track:6addc75b34e3262bc6f5c164c2517226e41def0dba045c977863b99c409aab96` |
| 10 | `theorem` | [poissonSqD](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/poissonsqd.md) | 86 | `result-track:9027ebcef15b11bea9ed1430d9ac8cdadf62b9479c544898a49384e021414527` |
| 11 | `theorem` | [blockInputsD_of](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/blockinputsd-of.md) | 96 | `result-track:82f1ffc362447c694e77dff27b9b539a96d5b8d04f70acead2110567f9eb6c73` |
| 12 | `theorem` | [eventually_blockInputsD](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/eventually-blockinputsd.md) | 104 | `result-track:c29b7155312c4a26af5248ba3873b9f406d8c21a7268b3097e2a525f6b0a57b6` |
| 13 | `theorem` | [GzGpD_of](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/gzgpd-of.md) | 111 | `result-track:bf4dfb9b058cf8be53a0cf025978c41f5df8a97b49a21ce0de89041aa61a6b68` |
| 14 | `theorem` | [eventually_GzGpD](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/eventually-gzgpd.md) | 120 | `result-track:36e35cfefbe2ddae89d96f7e72084a910b31cb06a1147e96beb3f3a41ce0d0a1` |
| 15 | `def` | [C1D](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/c1d.md) | 128 | `declaration-track:d992020196bfe890a914bce1227c5eb3fa3c8f87ee59bddc1c52868fc528a675` |
| 16 | `lemma` | [C1D_nonneg](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/c1d-nonneg.md) | 130 | `result-track:d049398ec9963d50503497a26844fd59733d675b5c25521ac325315857663639` |
| 17 | `lemma` | [C1D_le](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/c1d-le.md) | 133 | `result-track:ae04548cf60104ee28a545155763eb0665b62ddee4e59eb4cd4abb7d1b826637` |
| 18 | `theorem` | [hdecayD](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/hdecayd.md) | 141 | `result-track:fa75b3c3ffe04745fdeccce496f9b9bb9602684af6ad604a82d11bf141ecdb76` |
| 19 | `theorem` | [eventually_tailPackageD](../../../../MeasureAndIntegration/ZeroSideD.lean/declarations/eventually-tailpackaged.md) | 155 | `result-track:8faaf0490e4a33a7375bc3a9134dbd90a8ab9e7089224115abccaf539a15b648` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=880185454f3bf14f9f0df103907c90e4bfec3b3a469667979739bc89d73fc0ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSideD/Variant0e58cdcae04edbe4b1d83415b0ebfab2ddd85e5829362453f75b08195e4d0e13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
