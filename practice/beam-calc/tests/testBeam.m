function tests = testBeam
% Unit tests for beam-calc. Run from the repo root: runtests('tests')
tests = functiontests(localfunctions);
end

function testPointLoadHandCalc(tc)
% Hand check of delta = P*L^3/(3*E*I) for the original beam:
% steel, L = 2.0 m, P = 500 N, 50 x 100 mm section -> 1.60 mm
I = 0.05*0.10^3/12;
d = 500.0*2.0^3/(3*200e9*I);
verifyEqual(tc, d, 1.60e-3, 'RelTol', 1e-3)
end

function testScriptRuns(tc)
% beam.m runs without error and prints its result
out = evalc('beam');
verifySubstring(tc, out, 'Tip deflection:')
end
