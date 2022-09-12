import chroma from 'chroma-js';

function Transform(palette: any[], transformation?: (hex: string) => string) {
    let theme: { [index: string]: string } = {};
    if (typeof transformation !== 'undefined') {
        palette.forEach((c) => {
            theme[c.name] = transformation(c.hex);
        });
    } else {
        palette.forEach((c) => {
            theme[c.name] = c.hex;
        });
    }
    return theme;
}

function Saturate(palette: any[], n: number) {
    return Transform(palette, (c) => chroma(c).saturate(n).hex());
}

export { Transform, Saturate };
