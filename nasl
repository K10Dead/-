#include <iostream>
#include<math.h>
using namespace std;

class  Triangle
{
private:

    int a, b, c;

public:
    Triangle()
    {
      

    };

    Triangle(int x, int y, int z)
    {
        a = x; b = y; c = z;
    }

    ~Triangle()
    {
    
    }

    void Display()
    {
        cout << "Длина стороны а = " << a << endl << "Длина стороны b = " << b << endl << "Длина стороны c = " << c << endl;
    }

    int PER()
    {
        return a + b + c;
    }

    void PLO()
    {
        float per2;
        per2 = PER();
        float plo;
        plo = sqrt(per2 * (per2 - a) * (per2 - b) * (per2 - c));
        cout << "Площадь равна " << plo << endl << endl;
    }

    void set(int aa, int bb, int cc)
    {
        a = aa;
        b = bb;
        c = cc;
    }

    void BetterSet()
    {   
            cout << '\n' << "a=";
            cin >> a;
            cout << "b=";
            cin >> b;
            cout << "c=";
            cin >> c;
            if (a + b > c && b + c > a && a + c > b)
            {

            }
            else {
                cout << "ошибка!";
                exit(0);
            }
    }
};
int main()
{
    setlocale(LC_ALL, "ru");
    int n=0;
    cout << "кол - во треугольников: ";
    cin >> n;
    for (int i = 1; i <=n; i++)
    {

        cout << "Treugolbnik " << i << '\n' << "---------------------------";
        Triangle pop;
        pop.BetterSet();
        pop.Display();
        pop.PER();
        int per = pop.PER();
        cout << " Периметр = " << per << endl;
        pop.PLO();
    }
}
