# Verification target: Standard Subspace Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b703a3df30fcb7f1c7cd51a0285136e10b9ac1b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b703a3df30fcb7f1c7cd51a0285136e10b9ac1b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarSMulCLE](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/scalarsmulcle.md) | 55 | `declaration-track:f37fb417f2ba5b3a1a38872b4371a3e3666f817a7f000d09fd7538f531c89eeb` |
| 2 | `lemma` | [scalarSMulCLE_apply](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/scalarsmulcle-apply.md) | 58 | `result-track:714eed8d3efd8a1bc70405966427c752e75d2314d4ae2f998e31964991bc304e` |
| 3 | `lemma` | [scalarSMulCLE_symm_apply](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/scalarsmulcle-symm-apply.md) | 61 | `result-track:27db07712c16a657640108955b56015914a0dd8e43d46ad64efdf9e3af180a25` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/instance.md) | 72 | `declaration-track:5c40021586ed04e8aeee12ded78e0871a40f5af89aa0c8ee3ce6fed2371f6765` |
| 5 | `lemma` | [inner_real_eq_re_inner](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/inner-real-eq-re-inner.md) | 81 | `result-track:453240c42978f18d7846509e73b7cbcf028a5ed5ff70ebaae497e0588e33b0b9` |
| 6 | `def` | [_root_.Complex.UnitI](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/root-complex-uniti.md) | 85 | `declaration-track:5d8ebf04e503928044a1fb4d13a0d4468dd360997bfc8f38951e7d503df1f34c` |
| 7 | `abbrev` | [mulI](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli.md) | 92 | `declaration-track:8ff85978e67e25b1ea639b96dac9b042f9c4f97e10c8f0b58a85e98b4d864987` |
| 8 | `abbrev` | [symplComp](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/symplcomp.md) | 97 | `declaration-track:716f6a5a4a7758bf38b4b9e40d03d66bec26fc029972a4515b9f648505bf2ed0` |
| 9 | `lemma` | [mem_iff](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/mem-iff.md) | 99 | `result-track:5410676abea3e12927a4243c18ed773fb21ab15c8a997b1a9a9889895c830c96` |
| 10 | `lemma` | [mem_symplComp_iff](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/mem-symplcomp-iff.md) | 102 | `result-track:36f6606aeb72510c6a1044b2afa62dbba7f5dc2302299683ef9a15a9d7a37c9a` |
| 11 | `lemma` | [mulI_orthogonal_eq_symplComp](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli-orthogonal-eq-symplcomp.md) | 115 | `result-track:e16474d0afc906eb70c5b9e8646501e340e546c7ac74e112afd608c2453540a3` |
| 12 | `lemma` | [mulI_orthogonal](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli-orthogonal.md) | 122 | `result-track:de3b303285b6bf8a908f3c7ab5b0ab50626cf4228cf9835c5955141eb00061d7` |
| 13 | `lemma` | [mulI_symplComp](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli-symplcomp.md) | 126 | `result-track:16b609f636e1475a59963f72f41f4c3e01b9e9de5d44b7c7f7a5590555a07c63` |
| 14 | `lemma` | [mulI_mulI_eq](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli-muli-eq.md) | 131 | `result-track:ee944a4ae2e2379dca948b1dd8ac518f931b953646d4ab1cd35bb98fc197e6f6` |
| 15 | `lemma` | [involutive_mulI](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/involutive-muli.md) | 142 | `result-track:df187eeddff2161490abeeb44fb96c043102d817e94cddb83c49bf70de5d56cd` |
| 16 | `lemma` | [symplComp_symplComp_eq](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/symplcomp-symplcomp-eq.md) | 146 | `result-track:0eae72a7dff1bd473dde8ad27db29859b914efe6178d4a7f5db37c33cb66208d` |
| 17 | `lemma` | [mulI_sup](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli-sup.md) | 149 | `result-track:203317e8b19d9f61ac1c0bff65c6e81c5a1bcdfed3312cbdec0883912c463d44` |
| 18 | `lemma` | [mulI_inf](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli-inf.md) | 153 | `result-track:c1de83b22e970f4fe8ead9ad4ffe2f45b2a3199296325a0e9fb775fde7db9421` |
| 19 | `lemma` | [symplComp_sup](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/symplcomp-sup.md) | 158 | `result-track:52816790b4a551da9230ffc3d3215c1a250beafb651849bd15239bd31c4243ab` |
| 20 | `lemma` | [symplComp_inf](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/symplcomp-inf.md) | 164 | `result-track:2b38f8f7389ac2aa52ed63e0fdd4901af7a5526adcb44749fab9716950e0bf07` |
| 21 | `structure` | [StandardSubspace](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/standardsubspace.md) | 178 | `declaration-track:b6347947ffd2fd1b449fb3340d672633c0e062d4a5a131adefdad4c817b32945` |
| 22 | `lemma` | [toClosedSubmodule_inj](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/toclosedsubmodule-inj.md) | 195 | `result-track:e3a209a85cda4f879e6239f7ef339a49cc5e330aa748623706e7ebafe9a60939` |
| 23 | `lemma` | [toClosedSubmodule_injective](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/toclosedsubmodule-injective.md) | 199 | `result-track:fb3a832aee4d65716a9bc1201850c9d66135cea0977679b83fbeaccfc2c54946` |
| 24 | `def` | [mulI](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/muli-source-edition-2.md) | 204 | `declaration-track:9971c51989712344f746fcc67278e8eec8e7451e95df63d02cdb8f3d879f4180` |
| 25 | `def` | [symplComp](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/symplcomp-source-edition-2.md) | 210 | `declaration-track:fa46950f4ddd73eb994dbe9ddcb4946d96044c17c1c4fa418c959c8ff20164ee` |
| 26 | `theorem` | [symplComp_symplComp_eq](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/symplcomp-symplcomp-eq-source-edition-2.md) | 218 | `result-track:7d5b54b00440adbf3c5f7b48c2c11d14ec22bdbcace06601d47cd9b167027fb4` |
| 27 | `lemma` | [involutive_symplComp](../../../../FunctionalAnalysis/StandardSubspacePublic.lean/declarations/involutive-symplcomp.md) | 221 | `result-track:227553102576ea50a6591446dab99c9027ac790d0e8fedf9ae998729b616cfad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9294c88a79394f16900752a52d550591aa8ff7d83280eed11c26f46897b659b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/StandardSubspace/Variant093a501d69d952a596c8cdbf7bc0535c6dcd44bce811970ec84d12794978aab2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
