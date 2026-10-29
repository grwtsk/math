# Verification target: Presentation Direct Sum Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8412d76e9bfa735a2a3caa28577c32e4f12e8c8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8412d76e9bfa735a2a3caa28577c32e4f12e8c8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [directSum](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsum.md) | 44 | `declaration-track:636664d543ec2102643d8913f21f61639b77759b99c359b8941dba1436627218` |
| 2 | `def` | [directSumEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsumequiv.md) | 60 | `declaration-track:10aa45f26bcc6301297e91ae11a9b1ea8df5088f4013b79385d2813ee79c180e` |
| 3 | `def` | [directSum](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsum-source-edition-3.md) | 79 | `declaration-track:d3372015596d8a3b0fadd5b0653e556ceb8fd8dbe87272b0470b9d1740236450` |
| 4 | `lemma` | [directSum_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsum-var-source-edition-2.md) | 84 | `result-track:fe3c782b4e0b8ff5286a3ee057686d5250e667b56a2509e425304db712cd3bd6` |
| 5 | `def` | [directSum.isRepresentationCore](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsum-isrepresentationcore.md) | 94 | `declaration-track:4ca4bf4813dbd7ec891d7f082c8a1fbdb8f5514c2e0c17d87aaad6454e2328b8` |
| 6 | `lemma` | [directSum](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsum-source-edition-4.md) | 105 | `result-track:d51b6d2db19b0e6f1c2364b66ed249c8de65f48775dd6df45d18b1f2254dc1f8` |
| 7 | `def` | [directSum](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsum-source-edition-2.md) | 119 | `declaration-track:941b19b593aa96d0e4d22e9baf0d2f747e038adbb669914017f2d30afeb83795` |
| 8 | `lemma` | [directSum_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/directsum-var.md) | 125 | `result-track:4b6d4650062a498b9a3dbb84a1432640e6202715181ef80bfd73d95037b07679` |
| 9 | `def` | [finsupp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/finsupp.md) | 136 | `declaration-track:08c669372a9a9be9a18046484e7f2ac3f3f227583b2c48cbb352db181d5da2ed` |
| 10 | `lemma` | [finsupp_var](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/PresentationDirectSumNamespaced.lean/declarations/finsupp-var.md) | 140 | `result-track:e9c9bc6b242582682acf5b5eb845af3518d66ee91c84ff1d13e6092778e6e736` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5b9738e3c1e42c51ee88aecd325da0313729bc49ea51429b83dc24da8415ec3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DirectSum/Variant77e76dbc0837135954548532cdece64a2f31b460f46d5260b62006da3411bee1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
