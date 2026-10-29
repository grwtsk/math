# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2e757d62d2aa098cf88c5ccd31c47f0657e790f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2e757d62d2aa098cf88c5ccd31c47f0657e790f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPrimitiveStep`](../../../../MeasureAndIntegration/CriticalStripPrimitiveStep.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fifth](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/fifth.md) | 29 | `declaration-track:4148258e5127310eb444ffd4515a9ac93b7e67028e9cefb9e39553fee73004aa` |
| 2 | `def` | [sixthRaw](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthraw.md) | 30 | `declaration-track:012cf693d3ad42698e1df2dee181791c414ef312a8ce6db82c35373557986e2c` |
| 3 | `theorem` | [fifth_factor](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/fifth-factor.md) | 32 | `result-track:8d53302402e3f3b82be3971c1d1dd6fba86cc58b79081a0c93356faf8d703362` |
| 4 | `theorem` | [sixthRaw_factor](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthraw-factor.md) | 37 | `result-track:f97496e25f5a8f261056fdbcdfd5ab34390f4e1bc973e98019c27bd7885089e8` |
| 5 | `lemma` | [unit_product_bounds](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/unit-product-bounds.md) | 42 | `result-track:12ad8539cdf3d89996a431d222a39df0f734fa296b0b921e8a0d5d7fb6a1ccff` |
| 6 | `lemma` | [fifth_unit_bound](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/fifth-unit-bound.md) | 47 | `result-track:2a732cfb04057956e8dd6946e1631483189ad1dcef92a5bf098a057231d7c6a9` |
| 7 | `lemma` | [sixthRaw_unit_bounds](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthraw-unit-bounds.md) | 60 | `result-track:a24bcfd60828fb39d1bfddedf7fc66c94540c6a722f24eb8edafe070081c57a7` |
| 8 | `lemma` | [sixth_centered_unit_bound](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixth-centered-unit-bound.md) | 73 | `result-track:242c48e15906d28f8a446c706e707274a2412d050be238ece4443bf5a13e7625` |
| 9 | `theorem` | [sixthRaw_unit_mean](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthraw-unit-mean.md) | 79 | `result-track:b0bfbc6e9964f03bc16d38952158ea6221bac9c3b1e405df70e41bb67d13fb72` |
| 10 | `def` | [quarticKernel](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/quartickernel.md) | 93 | `declaration-track:b3ce2da887a5680e38b90ea9accca20c4d788d2e1a61e388f96f368c39ec3946` |
| 11 | `def` | [fifthKernel](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/fifthkernel.md) | 100 | `declaration-track:0d3382f406a96dca1eec62436642e0f1ce1814d0d1f1091366cb7f8a9cce4f71` |
| 12 | `def` | [sixthRawKernel](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthrawkernel.md) | 114 | `declaration-track:d00d577d99150a169221f557c087a53dad6dadef90fb45c0ab15c0b32c77568e` |
| 13 | `def` | [sixthKernel](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthkernel.md) | 129 | `declaration-track:6cf0049ebb40b6f65ba53e1dc69082261cac5b797d0a031e916f4007795a05b4` |
| 14 | `def` | [fifthCell](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/fifthcell.md) | 142 | `declaration-track:3b8048738e8d93d3bfd1157821f2989ff1113f8d76db04a9ddc3156e7f89933f` |
| 15 | `def` | [sixthCell](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthcell.md) | 146 | `declaration-track:29525ae723f2ce4cfd1173e33e1471c72453b7a88fbba39ef54160a25d4e072c` |
| 16 | `lemma` | [fifthCell_derivative](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/fifthcell-derivative.md) | 150 | `result-track:45e050a0ee36287ce981422456a3ef9dd3166d3244aa8e569d91ffe93b9162a2` |
| 17 | `lemma` | [sixthCell_derivative](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/sixthcell-derivative.md) | 158 | `result-track:3e65a64a1f58251133596ea4a7c9c858a8e742e38a4961a2e2fbdec84acea2ca` |
| 18 | `lemma` | [frac_on_cell](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/frac-on-cell.md) | 166 | `result-track:9a8b5ef343d4adff84a85c293bc694eb6313ad5595c53d5a4deb2c559e1932f4` |
| 19 | `def` | [quarticToFifth](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/quartictofifth.md) | 173 | `declaration-track:9ba2acbf8bbdc3616869a67a9f77fc69c57cd6fecc34269ce4e789f1eb120c39` |
| 20 | `def` | [fifthToSixth](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/fifthtosixth.md) | 192 | `declaration-track:fd6659a9b888a9bbb4864fbb09aa59f5a4790bd49e3a8e703b1a68b21ce639fb` |
| 21 | `def` | [tail](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/tail.md) | 208 | `declaration-track:f90200e47b946dd51dd94ce133aa16bd4348cdbd86b0f7059689026d6946f344` |
| 22 | `theorem` | [tail_norm_le](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/tail-norm-le.md) | 210 | `result-track:845baea2a64c35b0357a071d0a6507014d4745938fd74ff52a5ff66a79a7f0d8` |
| 23 | `theorem` | [tail_eq_raw](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/tail-eq-raw.md) | 220 | `result-track:e0443d56fcd122ebb28d5a2190d17ab31e04d005ab2258927a974bf3b66355f4` |
| 24 | `theorem` | [quartic_tail_identity](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/quartic-tail-identity.md) | 242 | `result-track:b8c84659572490e01599563303f352d5611fc0a40a0f6a38e258def73495c487` |
| 25 | `def` | [quadraticFactor](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/quadraticfactor.md) | 264 | `declaration-track:e05a0e8925a0c735957206e33d108a00edc7d55c07e69353807b178490ddb16e` |
| 26 | `def` | [reference](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/reference.md) | 266 | `declaration-track:4bd7da99eba3c50f0362f69650df88a7b45e5b7f41a6a433ca49eb623c927c83` |
| 27 | `def` | [multiplier](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/multiplier.md) | 269 | `declaration-track:4be38812343876b85c4d05f88c7b2abd5d4f18e462b956d96df37cf3e8dad874` |
| 28 | `theorem` | [reference_correction](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/reference-correction.md) | 271 | `result-track:df9942ce7708af2b8cce44bde06d2701bed318cb1a119dba2de0c885a7152d76` |
| 29 | `theorem` | [source_identity](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/source-identity.md) | 277 | `result-track:c07a1806ff55ca6492485c206e843ff01a7ab1b6b5cfc9e7adade3a554146b5a` |
| 30 | `def` | [finiteModel](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/finitemodel.md) | 286 | `declaration-track:0113e545cbe82f59ddef104e8cdf105eefad9e4526600de403dc55078639c06a` |
| 31 | `theorem` | [finiteModel_residual](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/finitemodel-residual.md) | 289 | `result-track:ad86eafd66365a4681c6aa036cac17bccda3560ad108d00da84365f5b5a98ac3` |
| 32 | `theorem` | [finiteModel_error](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/finitemodel-error.md) | 296 | `result-track:bc7696e4284396b7b8df13f0c6d3e44bc6beef5aade29416ce5aaf05e4ddcc9e` |
| 33 | `theorem` | [finiteModel_majorant_tendsto_zero](../../../../MeasureAndIntegration/CriticalStripSexticPrimitive.lean/declarations/finitemodel-majorant-tendsto-zero.md) | 303 | `result-track:fc01729f3c6639aa243a4409541222c80a9e7bf971b03816c93b7128e2156b05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b4ec4d96d55527b548ae14a55e7af6d5f9637d301dc593733d745782a63760f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
