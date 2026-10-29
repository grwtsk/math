# Prime Verb — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `39cc3750fb0edf65749822b411ab88c3c6f3801d` · SHA-256 `ecd52302167cefcd7edda898b61cb721d24ad31ef91a42ea6cc354304e94a612`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=0000010|role=proof_code_atom|slug=sourcetree-primeverb|owner=canonical_owner|core=SourceTree/PrimeVerb.lean|leaf=M536f75726365547265652f5072696d65566572622e6c65616e.lean -/

set_option autoImplicit false
inductive PrimeVerb | distinguish | triangulate | matrix | graph | discriminate | invariantize | partition | enumerate | combine | transform | conjecture | formalize | prove | coin | versify | totientize | algebraize | adjoint | diagonalize | symmetrize | generalize | specialize | analogize | codify | synthesize deriving DecidableEq, Repr

def primeVerbLabel : PrimeVerb → Nat
| .distinguish => 2 | .triangulate => 3 | .matrix => 5 | .graph => 7 | .discriminate => 11 | .invariantize => 13 | .partition => 17 | .enumerate => 19 | .combine => 23 | .transform => 29 | .conjecture => 31 | .formalize => 37 | .prove => 41 | .coin => 43 | .versify => 47 | .totientize => 53 | .algebraize => 59 | .adjoint => 61 | .diagonalize => 67 | .symmetrize => 71 | .generalize => 73 | .specialize => 79 | .analogize => 83 | .codify => 89 | .synthesize => 97
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f19cd9e8f044fe700762fe468da8438ee8904897a18d1995416fff31d42f4bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M536f75726365547265652f5072696d65566572622e6c65616e/Variantecd52302167cefcd7edda898b61cb721d24ad31ef91a42ea6cc354304e94a612.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
