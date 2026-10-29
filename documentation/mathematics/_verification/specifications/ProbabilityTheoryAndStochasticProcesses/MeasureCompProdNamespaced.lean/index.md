# Verification target: Measure Comp Prod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb1a1ffc261f11f7013db59c5350c25427671bba",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb1a1ffc261f11f7013db59c5350c25427671bba`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.Lebesgue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompProd` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod.md) | 47 | `declaration-track:fac53093b482b28000e100e2bf37c69490156ed2e205d056b15d474663db7977` |
| 2 | `lemma` | [compProd_of_not_sfinite](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-of-not-sfinite.md) | 54 | `result-track:65cb6e1df6c3502a35548b19e029ba66735093e2d759ff3c751d7314dcc19db5` |
| 3 | `lemma` | [compProd_of_not_isSFiniteKernel](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-of-not-issfinitekernel.md) | 60 | `result-track:4c2cf8b06d0239be2a11350041f48c91bb42355865f80e5eff8b29d60551e299` |
| 4 | `lemma` | [compProd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-apply.md) | 65 | `result-track:49fe40567032c7c0f48c7a10e05c0f4eae81c8d3e2d6d1b09854d6a82a634070` |
| 5 | `lemma` | [compProd_apply_univ](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-apply-univ.md) | 70 | `result-track:f751389abaa237ff978feb88c6a2e8e36e82ee7939959c5aba5a65eb74998792` |
| 6 | `lemma` | [compProd_apply_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-apply-prod.md) | 73 | `result-track:80db1e2e7a15555856cfb0063a353a37c936698d089eed8f7e796350012990bc` |
| 7 | `lemma` | [compProd_congr](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-congr.md) | 78 | `result-track:d0a9245d3cde43e4c70366570f5725954682cc22ffdd7288c0c4cfdb2d7b2b79` |
| 8 | `lemma` | [compProd_zero_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-zero-left.md) | 85 | `result-track:6cd3ec4337165598502bd54c9113dec527f7d4b063a576f1c9caf617f19f7214` |
| 9 | `lemma` | [compProd_zero_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-zero-right.md) | 87 | `result-track:bdb217cacfb14538352e1f208af73b56db7c92397dc67c866a23c0572e6bd12f` |
| 10 | `lemma` | [compProd_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-eq-zero-iff.md) | 89 | `result-track:adf3cfa1c87ba553b1b0f823afdca35c3b0a567b1447976bf49f49ab1655b852` |
| 11 | `lemma` | [Measure Comp Prod Namespaced](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-apply-eq-compprod-sectr.md) | 99 | `result-track:cd94b5fc9930fff955c5ac258663683a0b93e1630dc9603ba33ed5fc9460c1e9` |
| 12 | `lemma` | [compProd_id](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-id.md) | 106 | `result-track:b8d94fc615fda9693a6b032a86da1a346d75ec2c26c7a505aa12a45f94c404c6` |
| 13 | `lemma` | [ae_compProd_of_ae_ae](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/ae-compprod-of-ae-ae.md) | 117 | `result-track:91b3cf07c30cf6e0c17819e27a374d73d0e4990b3886959e6166f9c0d724302e` |
| 14 | `lemma` | [ae_ae_of_ae_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/ae-ae-of-ae-compprod.md) | 122 | `result-track:da22ea1478b0553f532acdca6d688b888c061d9d73777eadcb942734b26dbea2` |
| 15 | `lemma` | [ae_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/ae-compprod-iff.md) | 127 | `result-track:b2cbcb1ee71af04bfda174e2dbf03bde236e6c98f63f37ce03df0546a7a83d2b` |
| 16 | `lemma` | [compProd_const](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-const.md) | 135 | `result-track:86c0255802aa0e832273500ae1e51e0377964891580758328dcf620033596459` |
| 17 | `lemma` | [compProd_add_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-add-left.md) | 140 | `result-track:773da54e43323d5acbb66f96722b91675fa896c53ecfd5da8f6ddd40b7ac34b3` |
| 18 | `lemma` | [compProd_add_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-add-right.md) | 146 | `result-track:90188348783f31a3dd012c2c21edc098bfd8a29a64afe7860e649abc3598c03a` |
| 19 | `lemma` | [compProd_sum_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-sum-left.md) | 153 | `result-track:41bc396ed630063cf5e58a2df1515a72cb3a5a9546441399328bc0889920c486` |
| 20 | `lemma` | [compProd_sum_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-sum-right.md) | 158 | `result-track:599bdfc13ca067bd123ed36ef991267bc04df5b06dfb19e861350807f7828be9` |
| 21 | `lemma` | [fst_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/fst-compprod.md) | 165 | `result-track:3ce6fc9015675b0023945d02ef9c119d122627696578689ac71d81b4a83107d5` |
| 22 | `lemma` | [compProd_smul_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/compprod-smul-left.md) | 170 | `result-track:ca1835ce0c1269970916c938b126ac405c2f6b2f5d3eb870f42f6d78d24b94ea` |
| 23 | `lemma` | [lintegral_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/lintegral-compprod.md) | 177 | `result-track:d4611582225cc0f83c716bc2cdae84477e1d6e5110a49f69b3a96942ebc818d5` |
| 24 | `lemma` | [setLIntegral_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/setlintegral-compprod.md) | 183 | `result-track:c1689fb67c9a19310ba419b952bb66323eefb9199b648976dc5f6ef16092169a` |
| 25 | `lemma` | [dirac_compProd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/dirac-compprod-apply.md) | 192 | `result-track:40bbedbf217f46c784345ce2e668a54f576212e21c5870fe06f9cc1d666c091e` |
| 26 | `lemma` | [dirac_unit_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/dirac-unit-compprod.md) | 197 | `result-track:1657900e7932c76910141a0fbf6cf87e8d64dfe94993bf520a5c7293590018a0` |
| 27 | `lemma` | [dirac_unit_compProd_const](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/dirac-unit-compprod-const.md) | 201 | `result-track:fdcbed185a087afdc8bb5da9355baa8fb70ddd6ec71c3441101f0676c487fe63` |
| 28 | `lemma` | [snd_dirac_unit_compProd_const](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/snd-dirac-unit-compprod-const.md) | 205 | `result-track:0f57cfe7e59e84071c0f6613e07c76b8135b1577616ff8765bb2472c8c083cc9` |
| 29 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/instance-source-edition-3.md) | 208 | `declaration-track:b66cd3a21c38ede1530916ec583cd7509a5a461e0f8065c9b37a4739ca380649` |
| 30 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/instance.md) | 210 | `declaration-track:1a1de56fc28d9b5b17bb456b0c3f6dda8966c280a86a09e113c75480478be3b8` |
| 31 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/instance-source-edition-4.md) | 213 | `declaration-track:bab5284ec04cff1598b32c85d1571348cfc95ac4383bd9a80544eea65aa8b717` |
| 32 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/instance-source-edition-2.md) | 216 | `declaration-track:2474abd58d75a0c99a1c14fa696774460548c7517589ac6f0d3fb5238981a458` |
| 33 | `lemma` | [AbsolutelyContinuous.compProd_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-compprod-left.md) | 229 | `result-track:1fe2608b7626018b5eff464d5474e8f0193848dcd32289b1324984058d527250` |
| 34 | `lemma` | [AbsolutelyContinuous.compProd_right](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-compprod-right.md) | 242 | `result-track:7ceb4bfc49b2da92cb3ede7f75e3a0a6c0e996c45cf73b7233b92784765651d6` |
| 35 | `lemma` | [AbsolutelyContinuous.compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-compprod.md) | 255 | `result-track:68d246052166c60a0a086f373209bee08b08c3de0d67fc266291ba2e9f22900c` |
| 36 | `lemma` | [absolutelyContinuous_of_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-of-compprod.md) | 264 | `result-track:166eb91a8df5e23cef2df84bccf313140567e0f5358616d57ca5699291b208e7` |
| 37 | `lemma` | [absolutelyContinuous_compProd_left_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-compprod-left-iff.md) | 285 | `result-track:9393d7caa623b338abf4b0428129442d94301b8a05acb79e68a4b5e37916491d` |
| 38 | `lemma` | [AbsolutelyContinuous.compProd_of_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-compprod-of-compprod-source-edition-2.md) | 290 | `result-track:5422e943284d585f6a35a2925c9061c20ca0c913bed974ce2be765545724260c` |
| 39 | `lemma` | [MutuallySingular.compProd_of_left](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/mutuallysingular-compprod-of-left.md) | 304 | `result-track:8674b6e49f793646dcf261bc657618b5b980eebbef4812793eaadad41c8e28f5` |
| 40 | `lemma` | [mutuallySingular_of_mutuallySingular_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/mutuallysingular-of-mutuallysingular-compprod.md) | 321 | `result-track:6f5728f62f9d1b26bad03a81353b28f97c9d3394a86f855c2e3fedfbc09090e0` |
| 41 | `lemma` | [mutuallySingular_compProd_left_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/mutuallysingular-compprod-left-iff.md) | 336 | `result-track:a0fe0de67633f99a3d70b0bb994abc11bcc62ae6e1cf43aba5a5c5e80092f3d2` |
| 42 | `lemma` | [AbsolutelyContinuous.mutuallySingular_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-mutuallysingular-compprod-iff.md) | 349 | `result-track:f252600c0251d26c2e01eec16f6c0d18106c2c213436f8368daba3b215596c45` |
| 43 | `lemma` | [mutuallySingular_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/mutuallysingular-compprod-iff.md) | 359 | `result-track:8d64ad24aa0302d1d27119a33ab89665e0a4702897fa436310381cda367d1193` |
| 44 | `lemma` | [absolutelyContinuous_compProd_of_compProd](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-compprod-of-compprod.md) | 375 | `result-track:21f3bf87ee414f1d99fb50ec772c72c98958a69f8153de0875a4b08eaf524ce9` |
| 45 | `lemma` | [absolutelyContinuous_compProd_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasureCompProdNamespaced.lean/declarations/absolutelycontinuous-compprod-iff.md) | 384 | `result-track:acdafe152cd0109b9da002c76d57bfc8ad1177aff20b6bf7c2c567ef3db034bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=461192181ab4dfb22742a57c8b908046dafc97a3ca804c939fa257021165476f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
